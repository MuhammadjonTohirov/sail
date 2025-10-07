import { useState, useEffect, useCallback } from 'react';
import { Favorites } from '@/lib/api';

interface FavoriteItem {
  id: number;
  listing: number;
  listing_title: string;
  listing_price: number;
  listing_location: string;
  listing_media_urls: string[];
  created_at: string;
}

export function useFavorites() {
  const [favorites, setFavorites] = useState<FavoriteItem[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  const loadFavorites = useCallback(async () => {
    try {
      setLoading(true);
      setError(null);
      const data = await Favorites.list();
      setFavorites(data || []);
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Failed to load favorites');
      setFavorites([]);
    } finally {
      setLoading(false);
    }
  }, []);

  useEffect(() => {
    loadFavorites();
  }, [loadFavorites]);

  const toggleFavorite = useCallback(async (listingId: number) => {
    try {
      const result = await Favorites.toggle(listingId);

      if (result.favorited) {
        // Reload to get full listing data
        await loadFavorites();
      } else {
        // Remove from local state
        setFavorites(prev => prev.filter(item => item.listing !== listingId));
      }

      return result.favorited;
    } catch (err) {
      throw new Error(err instanceof Error ? err.message : 'Failed to toggle favorite');
    }
  }, [loadFavorites]);

  const removeFavorite = useCallback(async (listingId: number) => {
    try {
      await Favorites.delete(listingId);
      setFavorites(prev => prev.filter(item => item.listing !== listingId));
    } catch (err) {
      throw new Error(err instanceof Error ? err.message : 'Failed to remove favorite');
    }
  }, []);

  const isFavorite = useCallback((listingId: number) => {
    return favorites.some(item => item.listing === listingId);
  }, [favorites]);

  return {
    favorites,
    loading,
    error,
    toggleFavorite,
    removeFavorite,
    isFavorite,
    reload: loadFavorites,
  };
}
