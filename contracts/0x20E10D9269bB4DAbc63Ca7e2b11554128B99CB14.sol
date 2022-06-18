contract main {




// =====================  Runtime code  =====================


address owner;
uint256 communityClaimed;
uint256 creatorClaimed;
uint256 creatorRoyalties;
uint256 communityRoyalties;
uint256 collectionSize;
address tokenFeesAddress;
address creatorAddress;
address collectionAddress;
mapping of uint256 stor9;
mapping of uint256 addressClaims;

function communityClaimed() payable {
    return communityClaimed
}

function creatorRoyalties() payable {
    return creatorRoyalties
}

function collectionSize() payable {
    return collectionSize
}

function getAddressClaims(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return addressClaims[address(arg1)]
}

function communityRoyalties() payable {
    return communityRoyalties
}

function collectionAddress() payable {
    return collectionAddress
}

function owner() payable {
    return owner
}

function creatorClaimed() payable {
    return creatorClaimed
}

function tokenFeesAddress() payable {
    return tokenFeesAddress
}

function creatorAddress() payable {
    return creatorAddress
}

function _fallback() payable {
    revert
}

function getRoyalties() payable {
    return creatorRoyalties, communityRoyalties
}

function getTotalRoyalties() payable {
    if creatorRoyalties > -communityRoyalties - 1:
        revert with 'NH{q', 17
    return (creatorRoyalties + communityRoyalties)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setCreatorAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    creatorAddress = arg1
}

function setTokenFeesAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenFeesAddress = arg1
}

function setCreatorRoyalties(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    creatorRoyalties = arg1
}

function setCommunityRoyalties(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    communityRoyalties = arg1
}

function setCollectionSize(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= collectionSize:
        revert with 0, 'Cannot increase collection size'
    collectionSize = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function getTotalCollected() payable {
    require ext_code.size(tokenFeesAddress)
    staticcall tokenFeesAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -creatorClaimed - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] + creatorClaimed > -communityClaimed - 1:
        revert with 'NH{q', 17
    return (ext_call.return_data[0] + creatorClaimed + communityClaimed)
}

function getTokenTotalRoyalties() payable {
    if creatorRoyalties > -communityRoyalties - 1:
        revert with 'NH{q', 17
    if communityRoyalties and 100 > -1 / communityRoyalties:
        revert with 'NH{q', 17
    if not creatorRoyalties + communityRoyalties:
        revert with 'NH{q', 18
    require ext_code.size(tokenFeesAddress)
    staticcall tokenFeesAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -creatorClaimed - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] + creatorClaimed > -communityClaimed - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] + creatorClaimed + communityClaimed and 100 * communityRoyalties / creatorRoyalties + communityRoyalties > -1 / ext_call.return_data[0] + creatorClaimed + communityClaimed:
        revert with 'NH{q', 17
    if not collectionSize:
        revert with 'NH{q', 18
    return ((ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize)
}

function getCreatorBalance() payable {
    if creatorRoyalties > -communityRoyalties - 1:
        revert with 'NH{q', 17
    if creatorRoyalties and 100 > -1 / creatorRoyalties:
        revert with 'NH{q', 17
    if not creatorRoyalties + communityRoyalties:
        revert with 'NH{q', 18
    require ext_code.size(tokenFeesAddress)
    staticcall tokenFeesAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -creatorClaimed - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] + creatorClaimed > -communityClaimed - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] + creatorClaimed + communityClaimed and 100 * creatorRoyalties / creatorRoyalties + communityRoyalties > -1 / ext_call.return_data[0] + creatorClaimed + communityClaimed:
        revert with 'NH{q', 17
    if (ext_call.return_data[0] * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) / 100 < creatorClaimed:
        revert with 'NH{q', 17
    return (((ext_call.return_data[0] * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) / 100) - creatorClaimed)
}

function getTokenBalance(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if creatorRoyalties > -communityRoyalties - 1:
        revert with 'NH{q', 17
    if communityRoyalties and 100 > -1 / communityRoyalties:
        revert with 'NH{q', 17
    if not creatorRoyalties + communityRoyalties:
        revert with 'NH{q', 18
    require ext_code.size(tokenFeesAddress)
    staticcall tokenFeesAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -creatorClaimed - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] + creatorClaimed > -communityClaimed - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] + creatorClaimed + communityClaimed and 100 * communityRoyalties / creatorRoyalties + communityRoyalties > -1 / ext_call.return_data[0] + creatorClaimed + communityClaimed:
        revert with 'NH{q', 17
    if not collectionSize:
        revert with 'NH{q', 18
    if (ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize < stor9[arg1]:
        revert with 'NH{q', 17
    return (((ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor9[arg1])
}

function claimCreator() payable {
    if creatorAddress != msg.sender:
        revert with 0, 'Only creator can claim'
    if creatorRoyalties > -communityRoyalties - 1:
        revert with 'NH{q', 17
    if creatorRoyalties and 100 > -1 / creatorRoyalties:
        revert with 'NH{q', 17
    if not creatorRoyalties + communityRoyalties:
        revert with 'NH{q', 18
    require ext_code.size(tokenFeesAddress)
    staticcall tokenFeesAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -creatorClaimed - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] + creatorClaimed > -communityClaimed - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] + creatorClaimed + communityClaimed and 100 * creatorRoyalties / creatorRoyalties + communityRoyalties > -1 / ext_call.return_data[0] + creatorClaimed + communityClaimed:
        revert with 'NH{q', 17
    if (ext_call.return_data[0] * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) / 100 < creatorClaimed:
        revert with 'NH{q', 17
    if ((ext_call.return_data[0] * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) / 100) - creatorClaimed <= 0:
        revert with 0, 'No balance to claim'
    require ext_code.size(tokenFeesAddress)
    call tokenFeesAddress.0xa9059cbb with:
         gas gas_remaining wei
        args creatorAddress, ((ext_call.return_data[0] * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) / 100) - creatorClaimed
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if creatorClaimed > -((ext_call.return_data[0] * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) / 100) + creatorClaimed - 1:
        revert with 'NH{q', 17
    creatorClaimed = (ext_call.return_data[0] * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) / 100
    emit 0xa54a9eaf: (((ext_call.return_data[0] * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * creatorRoyalties / creatorRoyalties + communityRoyalties) / 100) - creatorClaimed)
}

function getTokensBalance(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(arg1.length) + 97
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 9
        if creatorRoyalties > -communityRoyalties - 1:
            revert with 'NH{q', 17
        if communityRoyalties and 100 > -1 / communityRoyalties:
            revert with 'NH{q', 17
        if not creatorRoyalties + communityRoyalties:
            revert with 'NH{q', 18
        mem[mem[64] + 4] = this.address
        require ext_code.size(tokenFeesAddress)
        staticcall tokenFeesAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _30 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_30] == mem[_30]
        if mem[_30] > -creatorClaimed - 1:
            revert with 'NH{q', 17
        if mem[_30] + creatorClaimed > -communityClaimed - 1:
            revert with 'NH{q', 17
        if mem[_30] + creatorClaimed + communityClaimed and 100 * communityRoyalties / creatorRoyalties + communityRoyalties > -1 / mem[_30] + creatorClaimed + communityClaimed:
            revert with 'NH{q', 17
        if not collectionSize:
            revert with 'NH{q', 18
        if (mem[_30] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize < stor9[mem[0]]:
            revert with 'NH{q', 17
        if s > -((mem[_30] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) + stor9[mem[0]] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + ((mem[_30] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor9[mem[0]]
        continue 
    return (s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length)
}

function claimCommunity(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if creatorRoyalties > -communityRoyalties - 1:
        revert with 'NH{q', 17
    if communityRoyalties and 100 > -1 / communityRoyalties:
        revert with 'NH{q', 17
    if not creatorRoyalties + communityRoyalties:
        revert with 'NH{q', 18
    require ext_code.size(tokenFeesAddress)
    staticcall tokenFeesAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -creatorClaimed - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] + creatorClaimed > -communityClaimed - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] + creatorClaimed + communityClaimed and 100 * communityRoyalties / creatorRoyalties + communityRoyalties > -1 / ext_call.return_data[0] + creatorClaimed + communityClaimed:
        revert with 'NH{q', 17
    if not collectionSize:
        revert with 'NH{q', 18
    if (ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize < stor9[arg1]:
        revert with 'NH{q', 17
    if ((ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor9[arg1] > 0:
        require ext_code.size(collectionAddress)
        call collectionAddress.0x6352211e with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20]:
            require ext_code.size(tokenFeesAddress)
            call tokenFeesAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), ((ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor9[arg1]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if stor9[arg1] > -((ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) + stor9[arg1] - 1:
                revert with 'NH{q', 17
            stor9[arg1] = (ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize
            if addressClaims[address(ext_call.return_data[0])] > -((ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) + stor9[arg1] - 1:
                revert with 'NH{q', 17
            addressClaims[address(ext_call.return_data[0])] = addressClaims[address(ext_call.return_data[0])] + ((ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor9[arg1]
            if communityClaimed > -((ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) + stor9[arg1] - 1:
                revert with 'NH{q', 17
            communityClaimed = communityClaimed + ((ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor9[arg1]
            emit 0xe64d7cc3: address(ext_call.return_data[0]), ((ext_call.return_data[0] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor9[arg1], arg1
}

function claimCommunityBatch(uint256[] arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    while idx < arg1.length:
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 9
        if creatorRoyalties > -communityRoyalties - 1:
            revert with 'NH{q', 17
        if communityRoyalties and 100 > -1 / communityRoyalties:
            revert with 'NH{q', 17
        if not creatorRoyalties + communityRoyalties:
            revert with 'NH{q', 18
        mem[mem[64] + 4] = this.address
        require ext_code.size(tokenFeesAddress)
        staticcall tokenFeesAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _21 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _22 = mem[_21]
        require mem[_21] == mem[_21]
        if mem[_21] > -creatorClaimed - 1:
            revert with 'NH{q', 17
        if mem[_21] + creatorClaimed > -communityClaimed - 1:
            revert with 'NH{q', 17
        if mem[_21] + creatorClaimed + communityClaimed and 100 * communityRoyalties / creatorRoyalties + communityRoyalties > -1 / mem[_21] + creatorClaimed + communityClaimed:
            revert with 'NH{q', 17
        if not collectionSize:
            revert with 'NH{q', 18
        if (mem[_21] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize < stor9[cd[((32 * idx) + arg1 + 36)]]:
            revert with 'NH{q', 17
        if ((mem[_21] * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor9[cd[((32 * idx) + arg1 + 36)]] > 0:
            mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
            require ext_code.size(collectionAddress)
            call collectionAddress.0x6352211e with:
                 gas gas_remaining wei
                args cd[((32 * idx) + arg1 + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _25 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _26 = mem[_25]
            require mem[_25] == mem[_25 + 12 len 20]
            if mem[_25 + 12 len 20]:
                mem[mem[64] + 4] = mem[_25 + 12 len 20]
                require ext_code.size(tokenFeesAddress)
                call tokenFeesAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], ((_22 * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor9[cd[((32 * idx) + arg1 + 36)]]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if stor9[cd[((32 * idx) + arg1 + 36)]] > -((_22 * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) + stor9[cd[((32 * idx) + arg1 + 36)]] - 1:
                    revert with 'NH{q', 17
                stor9[cd[((32 * idx) + arg1 + 36)]] = (_22 * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize
                if addressClaims[address(_26)] > -((_22 * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) + stor9[cd[((32 * idx) + arg1 + 36)]] - 1:
                    revert with 'NH{q', 17
                mem[0] = address(_26)
                mem[32] = 10
                addressClaims[address(_26)] = addressClaims[address(_26)] + ((_22 * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor9[cd[((32 * idx) + arg1 + 36)]]
                if communityClaimed > -((_22 * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) + stor9[cd[((32 * idx) + arg1 + 36)]] - 1:
                    revert with 'NH{q', 17
                communityClaimed = communityClaimed + ((_22 * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor9[cd[((32 * idx) + arg1 + 36)]]
                mem[mem[64]] = address(_26)
                mem[mem[64] + 32] = ((_22 * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor9[cd[((32 * idx) + arg1 + 36)]]
                mem[mem[64] + 64] = cd[((32 * idx) + arg1 + 36)]
                emit 0xe64d7cc3: address(_26), ((_22 * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (creatorClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) + (communityClaimed * 100 * communityRoyalties / creatorRoyalties + communityRoyalties) / 100 / collectionSize) - stor9[cd[((32 * idx) + arg1 + 36)]], cd[((32 * idx) + arg1 + 36)]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
