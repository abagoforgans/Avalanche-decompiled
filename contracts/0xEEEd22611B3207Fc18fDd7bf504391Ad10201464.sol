contract main {




// =====================  Runtime code  =====================


address owner;
uint256 communityClaimed;
uint256 creatorClaimed;
uint256 creatorRoyalties;
uint256 communityRoyalties;
uint256 collectionSize;
address sub_9b4f832aAddress;
address creatorAddress;
address collectionAddress;
uint8 stor9; offset 160
uint128 stor9; offset 160
address stakingAddress;
mapping of uint256 stor10;
mapping of uint256 addressClaims;

function communityClaimed() {
    return communityClaimed
}

function creatorRoyalties() {
    return creatorRoyalties
}

function collectionSize() {
    return collectionSize
}

function getAddressClaims(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return addressClaims[address(arg1)]
}

function communityRoyalties() {
    return communityRoyalties
}

function collectionAddress() {
    return collectionAddress
}

function owner() {
    return owner
}

function sub_9b4f832a(?) {
    return sub_9b4f832aAddress
}

function creatorClaimed() {
    return creatorClaimed
}

function claimActive() {
    return bool(uint8(stor9.field_160))
}

function stakingAddress() {
    return stakingAddress
}

function creatorAddress() {
    return creatorAddress
}

function _fallback() payable {
  stop
}

function getRoyalties() {
    return creatorRoyalties, communityRoyalties
}

function getTotalRewards() {
    if creatorRoyalties > !communityRoyalties:
        revert with 0, 17
    return (creatorRoyalties + communityRoyalties)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_1d08c0e1(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    creatorRoyalties = arg1
}

function sub_21c6f637(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    communityRoyalties = arg1
}

function setCreatorAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    creatorAddress = arg1
}

function setStakingAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stakingAddress = arg1
}

function sub_0efc8f3d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9b4f832aAddress = address(arg1)
}

function setClaimActive(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor9.field_160) = Mask(96, 0, arg1)
}

function setCollectionSize(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= collectionSize:
        revert with 0, 'Cannot increase collection size'
    collectionSize = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdrawToken(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getTotalCollected() {
    require ext_code.size(sub_9b4f832aAddress)
    staticcall sub_9b4f832aAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !creatorClaimed:
        revert with 0, 17
    if ext_call.return_data[0] + creatorClaimed > !communityClaimed:
        revert with 0, 17
    return (ext_call.return_data[0] + creatorClaimed + communityClaimed)
}

function sub_54852b44(?) {
    if creatorRoyalties > !communityRoyalties:
        revert with 0, 17
    if communityRoyalties > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 0, 17
    if not creatorRoyalties + communityRoyalties:
        revert with 0, 18
    require ext_code.size(sub_9b4f832aAddress)
    staticcall sub_9b4f832aAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !creatorClaimed:
        revert with 0, 17
    if ext_call.return_data[0] + creatorClaimed > !communityClaimed:
        revert with 0, 17
    if ext_call.return_data[0] + creatorClaimed + communityClaimed and 100 * communityRoyalties / creatorRoyalties + communityRoyalties > -1 / ext_call.return_data[0] + creatorClaimed + communityClaimed:
        revert with 0, 17
    if not collectionSize:
        revert with 0, 18
    return ((ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize)
}

function getCreatorBalance() {
    if creatorRoyalties > !communityRoyalties:
        revert with 0, 17
    if creatorRoyalties > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 0, 17
    if not creatorRoyalties + communityRoyalties:
        revert with 0, 18
    require ext_code.size(sub_9b4f832aAddress)
    staticcall sub_9b4f832aAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !creatorClaimed:
        revert with 0, 17
    if ext_call.return_data[0] + creatorClaimed > !communityClaimed:
        revert with 0, 17
    if ext_call.return_data[0] + creatorClaimed + communityClaimed and 100 * creatorRoyalties / creatorRoyalties + communityRoyalties > -1 / ext_call.return_data[0] + creatorClaimed + communityClaimed:
        revert with 0, 17
    if (ext_call.return_data[0] * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) / 100 < creatorClaimed:
        revert with 0, 17
    return (((ext_call.return_data[0] * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) / 100) - creatorClaimed)
}

function getTokenBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    if creatorRoyalties > !communityRoyalties:
        revert with 0, 17
    if communityRoyalties > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 0, 17
    if not creatorRoyalties + communityRoyalties:
        revert with 0, 18
    require ext_code.size(sub_9b4f832aAddress)
    staticcall sub_9b4f832aAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !creatorClaimed:
        revert with 0, 17
    if ext_call.return_data[0] + creatorClaimed > !communityClaimed:
        revert with 0, 17
    if ext_call.return_data[0] + creatorClaimed + communityClaimed and 100 * communityRoyalties / creatorRoyalties + communityRoyalties > -1 / ext_call.return_data[0] + creatorClaimed + communityClaimed:
        revert with 0, 17
    if not collectionSize:
        revert with 0, 18
    if (ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize < stor10[arg1]:
        revert with 0, 17
    return (((ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[arg1])
}

function claimCreator() {
    if creatorAddress != msg.sender:
        revert with 0, 'Only creator can claim'
    if creatorRoyalties > !communityRoyalties:
        revert with 0, 17
    if creatorRoyalties > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 0, 17
    if not creatorRoyalties + communityRoyalties:
        revert with 0, 18
    require ext_code.size(sub_9b4f832aAddress)
    staticcall sub_9b4f832aAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !creatorClaimed:
        revert with 0, 17
    if ext_call.return_data[0] + creatorClaimed > !communityClaimed:
        revert with 0, 17
    if ext_call.return_data[0] + creatorClaimed + communityClaimed and 100 * creatorRoyalties / creatorRoyalties + communityRoyalties > -1 / ext_call.return_data[0] + creatorClaimed + communityClaimed:
        revert with 0, 17
    if (ext_call.return_data[0] * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) / 100 < creatorClaimed:
        revert with 0, 17
    if ((ext_call.return_data[0] * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) / 100) - creatorClaimed <= 0:
        revert with 0, 'No balance to claim'
    require ext_code.size(sub_9b4f832aAddress)
    call sub_9b4f832aAddress.0xa9059cbb with:
         gas gas_remaining wei
        args creatorAddress, ((ext_call.return_data[0] * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) / 100) - creatorClaimed
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if creatorClaimed > !(((ext_call.return_data[0] * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) / 100) - creatorClaimed):
        revert with 0, 17
    creatorClaimed = (ext_call.return_data[0] * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) / 100
    emit 0xa54a9eaf: (((ext_call.return_data[0] * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) / 100) - creatorClaimed)
}

function getTokensBalance(uint256[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    mem[64] = ceil32(32 * arg1.length) + 97
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 10
        if creatorRoyalties > !communityRoyalties:
            revert with 0, 17
        if communityRoyalties > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 0, 17
        if not creatorRoyalties + communityRoyalties:
            revert with 0, 18
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_9b4f832aAddress)
        staticcall sub_9b4f832aAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _30 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_30] > !creatorClaimed:
            revert with 0, 17
        if mem[_30] + creatorClaimed > !communityClaimed:
            revert with 0, 17
        if mem[_30] + creatorClaimed + communityClaimed and 100 * communityRoyalties / creatorRoyalties + communityRoyalties > -1 / mem[_30] + creatorClaimed + communityClaimed:
            revert with 0, 17
        if not collectionSize:
            revert with 0, 18
        if (mem[_30] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize < stor10[mem[0]]:
            revert with 0, 17
        if s > !(((mem[_30] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[mem[0]]):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + ((mem[_30] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[mem[0]]
        continue 
    return (s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length)
}

function claimCommunity(uint256 arg1) {
    require calldata.size - 4 >= 32
    if 1 == bool(uint8(stor9.field_160)):
        if creatorRoyalties > !communityRoyalties:
            revert with 0, 17
        if communityRoyalties > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 0, 17
        if not creatorRoyalties + communityRoyalties:
            revert with 0, 18
        require ext_code.size(sub_9b4f832aAddress)
        staticcall sub_9b4f832aAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > !creatorClaimed:
            revert with 0, 17
        if ext_call.return_data[0] + creatorClaimed > !communityClaimed:
            revert with 0, 17
        if ext_call.return_data[0] + creatorClaimed + communityClaimed and 100 * communityRoyalties / creatorRoyalties + communityRoyalties > -1 / ext_call.return_data[0] + creatorClaimed + communityClaimed:
            revert with 0, 17
        if not collectionSize:
            revert with 0, 18
        if (ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize < stor10[arg1]:
            revert with 0, 17
        if ((ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[arg1]:
            require ext_code.size(collectionAddress)
            call collectionAddress.0x6352211e with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if not stakingAddress:
                if ext_call.return_data[12 len 20]:
                    require ext_code.size(sub_9b4f832aAddress)
                    call sub_9b4f832aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), ((ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[arg1]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if stor10[arg1] > !(((ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[arg1]):
                        revert with 0, 17
                    stor10[arg1] = (ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize
                    if addressClaims[address(ext_call.return_data[0])] > !(((ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[arg1]):
                        revert with 0, 17
                    addressClaims[address(ext_call.return_data[0])] = addressClaims[address(ext_call.return_data[0])] + ((ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[arg1]
                    if communityClaimed > !(((ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[arg1]):
                        revert with 0, 17
                    communityClaimed = communityClaimed + ((ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[arg1]
                    emit 0xe64d7cc3: address(ext_call.return_data[0]), ((ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[arg1], arg1
            else:
                require ext_code.size(stakingAddress)
                call stakingAddress.0xfac8440e with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20]:
                    require ext_code.size(sub_9b4f832aAddress)
                    call sub_9b4f832aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), ((ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[arg1]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if stor10[arg1] > !(((ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[arg1]):
                        revert with 0, 17
                    stor10[arg1] = (ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize
                    if addressClaims[address(ext_call.return_data[0])] > !(((ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[arg1]):
                        revert with 0, 17
                    addressClaims[address(ext_call.return_data[0])] = addressClaims[address(ext_call.return_data[0])] + ((ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[arg1]
                    if communityClaimed > !(((ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[arg1]):
                        revert with 0, 17
                    communityClaimed = communityClaimed + ((ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[arg1]
                    emit 0xe64d7cc3: address(ext_call.return_data[0]), ((ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[arg1], arg1
                else:
                    if address(ext_call.return_data[0]):
                        require ext_code.size(sub_9b4f832aAddress)
                        call sub_9b4f832aAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ((ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[arg1]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if stor10[arg1] > !(((ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[arg1]):
                            revert with 0, 17
                        stor10[arg1] = (ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize
                        if addressClaims[address(ext_call.return_data[0])] > !(((ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[arg1]):
                            revert with 0, 17
                        addressClaims[address(ext_call.return_data[0])] = addressClaims[address(ext_call.return_data[0])] + ((ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[arg1]
                        if communityClaimed > !(((ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[arg1]):
                            revert with 0, 17
                        communityClaimed = communityClaimed + ((ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[arg1]
                        emit 0xe64d7cc3: address(ext_call.return_data[0]), ((ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[arg1], arg1
}

function claimCommunityBatch(uint256[] arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    while idx < arg1.length:
        if 1 == bool(uint8(stor9.field_160)):
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = 10
            if creatorRoyalties > !communityRoyalties:
                revert with 0, 17
            if communityRoyalties > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 0, 17
            if not creatorRoyalties + communityRoyalties:
                revert with 0, 18
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_9b4f832aAddress)
            staticcall sub_9b4f832aAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _41 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _42 = mem[_41]
            if mem[_41] > !creatorClaimed:
                revert with 0, 17
            if mem[_41] + creatorClaimed > !communityClaimed:
                revert with 0, 17
            if mem[_41] + creatorClaimed + communityClaimed and 100 * communityRoyalties / creatorRoyalties + communityRoyalties > -1 / mem[_41] + creatorClaimed + communityClaimed:
                revert with 0, 17
            if not collectionSize:
                revert with 0, 18
            if (mem[_41] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize < stor10[cd[((32 * idx) + arg1 + 36)]]:
                revert with 0, 17
            if ((mem[_41] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[cd[((32 * idx) + arg1 + 36)]]:
                mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
                require ext_code.size(collectionAddress)
                call collectionAddress.0x6352211e with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + arg1 + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _45 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _46 = mem[_45]
                require mem[_45] == mem[_45 + 12 len 20]
                if not stakingAddress:
                    if mem[_45 + 12 len 20]:
                        mem[mem[64] + 4] = mem[_45 + 12 len 20]
                        require ext_code.size(sub_9b4f832aAddress)
                        call sub_9b4f832aAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], ((_42 * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[cd[((32 * idx) + arg1 + 36)]]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if stor10[cd[((32 * idx) + arg1 + 36)]] > !(((_42 * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[cd[((32 * idx) + arg1 + 36)]]):
                            revert with 0, 17
                        stor10[cd[((32 * idx) + arg1 + 36)]] = (_42 * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize
                        if addressClaims[address(_46)] > !(((_42 * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[cd[((32 * idx) + arg1 + 36)]]):
                            revert with 0, 17
                        mem[0] = address(_46)
                        mem[32] = 11
                        addressClaims[address(_46)] = addressClaims[address(_46)] + ((_42 * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[cd[((32 * idx) + arg1 + 36)]]
                        if communityClaimed > !(((_42 * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[cd[((32 * idx) + arg1 + 36)]]):
                            revert with 0, 17
                        communityClaimed = communityClaimed + ((_42 * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[cd[((32 * idx) + arg1 + 36)]]
                        mem[mem[64]] = address(_46)
                        mem[mem[64] + 32] = ((_42 * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[cd[((32 * idx) + arg1 + 36)]]
                        mem[mem[64] + 64] = cd[((32 * idx) + arg1 + 36)]
                        emit 0xe64d7cc3: address(_46), ((_42 * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[cd[((32 * idx) + arg1 + 36)]], cd[((32 * idx) + arg1 + 36)]
                else:
                    mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
                    require ext_code.size(stakingAddress)
                    call stakingAddress.0xfac8440e with:
                         gas gas_remaining wei
                        args cd[((32 * idx) + arg1 + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _51 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _53 = mem[_51]
                    require mem[_51] == mem[_51 + 12 len 20]
                    if not mem[_51 + 12 len 20]:
                        if address(_46):
                            require ext_code.size(sub_9b4f832aAddress)
                            call sub_9b4f832aAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(_46), ((_42 * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[cd[((32 * idx) + arg1 + 36)]]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if stor10[cd[((32 * idx) + arg1 + 36)]] > !(((_42 * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[cd[((32 * idx) + arg1 + 36)]]):
                                revert with 0, 17
                            stor10[cd[((32 * idx) + arg1 + 36)]] = (_42 * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize
                            if addressClaims[address(_46)] > !(((_42 * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[cd[((32 * idx) + arg1 + 36)]]):
                                revert with 0, 17
                            mem[0] = address(_46)
                            mem[32] = 11
                            addressClaims[address(_46)] = addressClaims[address(_46)] + ((_42 * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[cd[((32 * idx) + arg1 + 36)]]
                            if communityClaimed > !(((_42 * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[cd[((32 * idx) + arg1 + 36)]]):
                                revert with 0, 17
                            communityClaimed = communityClaimed + ((_42 * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[cd[((32 * idx) + arg1 + 36)]]
                            mem[mem[64]] = address(_46)
                            mem[mem[64] + 32] = ((_42 * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[cd[((32 * idx) + arg1 + 36)]]
                            mem[mem[64] + 64] = cd[((32 * idx) + arg1 + 36)]
                            emit 0xe64d7cc3: address(_46), ((_42 * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[cd[((32 * idx) + arg1 + 36)]], cd[((32 * idx) + arg1 + 36)]
                    else:
                        mem[mem[64] + 4] = mem[_51 + 12 len 20]
                        require ext_code.size(sub_9b4f832aAddress)
                        call sub_9b4f832aAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], ((_42 * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[cd[((32 * idx) + arg1 + 36)]]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if stor10[cd[((32 * idx) + arg1 + 36)]] > !(((_42 * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[cd[((32 * idx) + arg1 + 36)]]):
                            revert with 0, 17
                        stor10[cd[((32 * idx) + arg1 + 36)]] = (_42 * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize
                        if addressClaims[address(_53)] > !(((_42 * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[cd[((32 * idx) + arg1 + 36)]]):
                            revert with 0, 17
                        mem[0] = address(_53)
                        mem[32] = 11
                        addressClaims[address(_53)] = addressClaims[address(_53)] + ((_42 * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[cd[((32 * idx) + arg1 + 36)]]
                        if communityClaimed > !(((_42 * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[cd[((32 * idx) + arg1 + 36)]]):
                            revert with 0, 17
                        communityClaimed = communityClaimed + ((_42 * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[cd[((32 * idx) + arg1 + 36)]]
                        mem[mem[64]] = address(_53)
                        mem[mem[64] + 32] = ((_42 * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[cd[((32 * idx) + arg1 + 36)]]
                        mem[mem[64] + 64] = cd[((32 * idx) + arg1 + 36)]
                        emit 0xe64d7cc3: address(_53), ((_42 * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor10[cd[((32 * idx) + arg1 + 36)]], cd[((32 * idx) + arg1 + 36)]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
