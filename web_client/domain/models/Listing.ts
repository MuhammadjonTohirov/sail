export interface Listing {
  readonly id: number;
  readonly title: string;
  readonly description?: string;
  readonly priceAmount: number;
  readonly priceCurrency: string;
  readonly isPriceNegotiable?: boolean;
  readonly condition: string;
  readonly dealType?: 'sell' | 'exchange' | 'free';
  readonly sellerType?: 'person' | 'business';
  readonly categoryId: number;
  readonly categoryName?: string;
  readonly locationId: number;
  readonly locationName?: string;
  readonly lat?: number;
  readonly lon?: number;
  readonly mediaUrls?: string[];
  readonly attributes?: Array<{ key: string; value: unknown; label?: string }>;
  readonly status?: string;
  readonly createdAt?: string;
  readonly updatedAt?: string;
  readonly refreshedAt?: string;
  readonly user?: {
    id: number;
    phone?: string;
    name?: string;
  };
  readonly seller?: {
    id: number;
    phone?: string;
    name?: string;
  };
}
