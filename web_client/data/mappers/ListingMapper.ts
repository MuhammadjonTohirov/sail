import { ListingDTO, ListingPayloadDTO } from '../models/ListingDTO';
import { Listing } from '../../domain/models/Listing';
import { ListingPayload } from '../../domain/models/ListingPayload';

export class ListingMapper {
  static toDomain(dto: ListingDTO): Listing {
    return {
      id: dto.id,
      title: dto.title,
      description: dto.description,
      priceAmount: dto.price_amount,
      priceCurrency: dto.price_currency,
      isPriceNegotiable: dto.is_price_negotiable,
      condition: dto.condition,
      dealType: dto.deal_type,
      sellerType: dto.seller_type,
      categoryId: dto.category || 0,
      categoryName: dto.category_name,
      locationId: dto.location || 0,
      locationName: dto.location_name,
      lat: dto.lat,
      lon: dto.lon,
      mediaUrls: dto.media_urls,
      attributes: dto.attributes,
      status: dto.status,
      createdAt: dto.created_at,
      updatedAt: dto.updated_at,
      refreshedAt: dto.refreshed_at,
      user: dto.user,
      seller: dto.seller,
    };
  }

  static toDomainList(dtos: ListingDTO[]): Listing[] {
    return dtos.map(dto => this.toDomain(dto));
  }

  static payloadToDTO(payload: ListingPayload): ListingPayloadDTO {
    return {
      title: payload.title,
      description: payload.description,
      price_amount: payload.priceAmount,
      price_currency: payload.priceCurrency,
      is_price_negotiable: payload.isPriceNegotiable,
      condition: payload.condition,
      deal_type: payload.dealType,
      seller_type: payload.sellerType,
      category: payload.categoryId,
      location: payload.locationId,
      lat: payload.lat,
      lon: payload.lon,
      attributes: payload.attributes?.map(attr => ({
        attribute: attr.attributeId,
        value: attr.value,
      })),
    };
  }

  static partialPayloadToDTO(payload: Partial<ListingPayload>): Partial<ListingPayloadDTO> {
    const dto: Partial<ListingPayloadDTO> = {};

    if (payload.title !== undefined) dto.title = payload.title;
    if (payload.description !== undefined) dto.description = payload.description;
    if (payload.priceAmount !== undefined) dto.price_amount = payload.priceAmount;
    if (payload.priceCurrency !== undefined) dto.price_currency = payload.priceCurrency;
    if (payload.isPriceNegotiable !== undefined) dto.is_price_negotiable = payload.isPriceNegotiable;
    if (payload.condition !== undefined) dto.condition = payload.condition;
    if (payload.dealType !== undefined) dto.deal_type = payload.dealType;
    if (payload.sellerType !== undefined) dto.seller_type = payload.sellerType;
    if (payload.categoryId !== undefined) dto.category = payload.categoryId;
    if (payload.locationId !== undefined) dto.location = payload.locationId;
    if (payload.lat !== undefined) dto.lat = payload.lat;
    if (payload.lon !== undefined) dto.lon = payload.lon;
    if (payload.attributes !== undefined) {
      dto.attributes = payload.attributes?.map(attr => ({
        attribute: attr.attributeId,
        value: attr.value,
      }));
    }

    return dto;
  }
}
