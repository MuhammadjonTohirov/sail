import { IListingsRepository } from '../../repositories/IListingsRepository';
import { UserListingsParams } from '../../models/UserListingsParams';
import { Listing } from '../../models/Listing';

export class GetUserListingsUseCase {
  constructor(private readonly repository: IListingsRepository) {}

  async execute(params: UserListingsParams): Promise<Listing[]> {
    if (!params.userId || params.userId <= 0) {
      throw new Error('Invalid user ID');
    }

    return await this.repository.getUserListings(params);
  }
}
