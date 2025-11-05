export interface SearchListing {
  readonly id: string;
  readonly title: string;
  readonly price?: number | null;
  readonly currency?: string | null;
  readonly mediaUrls?: string[] | null;
  readonly locationNameRu?: string | null;
  readonly locationNameUz?: string | null;
  readonly refreshedAt?: string | null;
  readonly isPromoted?: boolean | null;
}
