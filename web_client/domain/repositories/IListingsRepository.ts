import { Listing } from '../models/Listing';
import { ListingPayload } from '../models/ListingPayload';
import { UserListingsParams } from '../models/UserListingsParams';

export interface IListingsRepository {
  createListing(payload: ListingPayload): Promise<Listing>;
  getListingDetail(id: number): Promise<Listing>;
  getMyListings(): Promise<Listing[]>;
  getUserListings(params: UserListingsParams): Promise<Listing[]>;
  updateListing(id: number, payload: Partial<ListingPayload>): Promise<Listing>;
  refreshListing(id: number): Promise<void>;
  uploadMedia(id: number, file: File): Promise<any>;
  deleteMedia(listingId: number, mediaId: number): Promise<void>;
}
