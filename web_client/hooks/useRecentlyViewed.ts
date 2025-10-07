import { useState, useEffect, useCallback } from 'react';
import { RecentlyViewed } from '@/lib/api';

interface RecentItem {
  id: number;
  listing: number;
  listing_title: string;
  listing_price: number;
  listing_location: string;
  listing_media_urls: string[];
  viewed_at: string;
}

export function useRecentlyViewed() {
  const [recentItems, setRecentItems] = useState<RecentItem[]>([]);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const loadRecentItems = useCallback(async () => {
    try {
      setLoading(true);
      setError(null);
      const data = await RecentlyViewed.list();
      setRecentItems(data || []);
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Failed to load recent items');
      setRecentItems([]);
    } finally {
      setLoading(false);
    }
  }, []);

  const trackViewed = useCallback(async (listingId: number) => {
    try {
      await RecentlyViewed.track(listingId);
      // Optionally reload the list
      await loadRecentItems();
    } catch (err) {
      // Silently fail - tracking is not critical
      console.warn('Failed to track viewed listing:', err);
    }
  }, [loadRecentItems]);

  const clearAll = useCallback(async () => {
    try {
      await RecentlyViewed.clear();
      setRecentItems([]);
    } catch (err) {
      throw new Error(err instanceof Error ? err.message : 'Failed to clear recent items');
    }
  }, []);

  return {
    recentItems,
    loading,
    error,
    trackViewed,
    clearAll,
    load: loadRecentItems,
  };
}
