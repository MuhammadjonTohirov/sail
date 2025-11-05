export interface ListingDTO {
  id: number;
  title: string;
  description?: string;
  price_amount: number;
  price_currency: string;
  is_price_negotiable?: boolean;
  condition: string;
  deal_type?: 'sell' | 'exchange' | 'free';
  seller_type?: 'person' | 'business';
  category?: number;
  category_name?: string;
  location?: number;
  location_name?: string;
  lat?: number;
  lon?: number;
  media_urls?: string[];
  attributes?: Array<{ key: string; value: unknown; label?: string }>;
  status?: string;
  created_at?: string;
  updated_at?: string;
  refreshed_at?: string;
  user?: {
    id: number;
    phone?: string;
    name?: string;
  };
  seller?: {
    id: number;
    phone?: string;
    name?: string;
  };
}

export interface ListingPayloadDTO {
  title: string;
  description?: string;
  price_amount: string | number;
  price_currency: string;
  is_price_negotiable?: boolean;
  condition: string;
  deal_type?: 'sell' | 'exchange' | 'free';
  seller_type?: 'person' | 'business';
  category: number;
  location: number;
  lat?: number;
  lon?: number;
  attributes?: Array<{ attribute: number; value: unknown }>;
}
