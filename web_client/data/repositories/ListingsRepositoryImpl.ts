import { IListingsRepository } from '../../domain/repositories/IListingsRepository';
import { Listing } from '../../domain/models/Listing';
import { ListingPayload } from '../../domain/models/ListingPayload';
import { UserListingsParams } from '../../domain/models/UserListingsParams';
import { ListingDTO } from '../models/ListingDTO';
import { ListingMapper } from '../mappers/ListingMapper';
import { Listings } from '../../lib/listingsApi';

export class ListingsRepositoryImpl implements IListingsRepository {
  async createListing(payload: ListingPayload): Promise<Listing> {
    const dto = ListingMapper.payloadToDTO(payload);
    const result: ListingDTO = await Listings.create(dto as any);
    return ListingMapper.toDomain(result);
  }

  async getListingDetail(id: number): Promise<Listing> {
    const result: ListingDTO = await Listings.detail(id);
    return ListingMapper.toDomain(result);
  }

  async getMyListings(): Promise<Listing[]> {
    const result: ListingDTO[] = await Listings.mine();
    return ListingMapper.toDomainList(result);
  }

  async getUserListings(params: UserListingsParams): Promise<Listing[]> {
    const apiParams = {
      category: params.category,
      sort: params.sort,
    };
    const result: ListingDTO[] = await Listings.userListings(params.userId, apiParams);
    return ListingMapper.toDomainList(result);
  }

  async updateListing(id: number, payload: Partial<ListingPayload>): Promise<Listing> {
    const dto = ListingMapper.partialPayloadToDTO(payload);
    const result: ListingDTO = await Listings.update(id, dto as any);
    return ListingMapper.toDomain(result);
  }

  async refreshListing(id: number): Promise<void> {
    await Listings.refresh(id);
  }

  async uploadMedia(id: number, file: File): Promise<any> {
    return await Listings.uploadMedia(id, file);
  }

  async deleteMedia(listingId: number, mediaId: number): Promise<void> {
    await Listings.deleteMedia(listingId, mediaId);
  }
}
