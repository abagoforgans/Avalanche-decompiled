contract main {




// =====================  Runtime code  =====================


address owner;
array of struct itemsForSaleList;
mapping of struct itemsForSale;
mapping of uint8 stor3;
address stor4;
uint8 fees; offset 160
address sub_fe68a152Address;
uint256 feeBalance;
mapping of uint8 stor7;
mapping of uint8 stor8;
mapping of uint256 itemLastClaimRatioAt;
uint256 totalReward;
uint256 claimedReward;
uint256 currentClaimRatio;
uint8 stor13;

function itemsForSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    return itemsForSale[arg1].field_0, 
           address(itemsForSale[arg1].field_256),
           itemsForSale[arg1].field_512,
           address(itemsForSale[arg1].field_768),
           itemsForSale[arg1].field_1024,
           bool(uint8(itemsForSale[arg1].field_1280))
}

function itemsForSaleList(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < itemsForSaleList.length
    return itemsForSaleList[arg1].field_0
}

function isExcludedFromFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[arg1])
}

function claimedReward() {
    return claimedReward
}

function currentClaimRatio() {
    return currentClaimRatio
}

function feeBalance() {
    return feeBalance
}

function totalReward() {
    return totalReward
}

function itemLastClaimRatioAt(uint256 arg1) {
    require calldata.size - 4 >= 32
    return itemLastClaimRatioAt[arg1]
}

function acceptedTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[arg1])
}

function owner() {
    return owner
}

function fees() {
    return fees
}

function isActiveOnSale(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return bool(stor3[arg1][arg2])
}

function sub_fe68a152(?) {
    return sub_fe68a152Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function settings(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13 = uint8(arg1)
}

function setavaxTreezNft(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_fe68a152Address = arg1
}

function ex_in_Clude_FromFee(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8[address(arg1)] = uint8(arg2)
}

function setFees(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 1:
        revert with 0, 'out of range'
    if arg1 > 30:
        revert with 0, 'out of range'
    fees = arg1
}

function addToRewardPool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if msg.value < arg1:
        revert with 0, 'insuficient fund'
    if totalReward > !msg.value:
        revert with 0, 17
    totalReward += msg.value
    if currentClaimRatio > !(msg.value / 10000):
        revert with 0, 17
    currentClaimRatio += msg.value / 10000
}

function feeRemitanceAddressUpdate(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cant make address 0 fee remitance address'
    stor4 = arg1
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

function NftTokenStatusUpdate(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' NFT not supported at zero address'
    stor7[address(arg1)] = uint8(arg2)
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(arg4.length) + 128 < 96 or ceil32(arg4.length) + 128 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
}

function itemsForSaleIds() {
    if itemsForSaleList.length:
        mem[128] = uint256(itemsForSaleList.field_0)
        idx = 128
        s = 0
        while (32 * itemsForSaleList.length) + 96 > idx:
            mem[idx + 32] = itemsForSaleList[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=itemsForSaleList.length, data=mem[128 len 32 * itemsForSaleList.length])
    mem[(32 * itemsForSaleList.length) + 128] = 32
    mem[(32 * itemsForSaleList.length) + 160] = itemsForSaleList.length
    mem[(32 * itemsForSaleList.length) + 192 len 32 * itemsForSaleList.length] = mem[128 len 32 * itemsForSaleList.length]
    return memory
      from (32 * itemsForSaleList.length) + 128
       len (96 * itemsForSaleList.length) + 64
}

function cancelSales(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(itemsForSale[arg1].field_768) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Sales Owner can call this function'
    if not stor3[address(stor2[arg1].field_256)][stor2[arg1].field_512]:
        revert with 0, 'Item not in sale'
    if uint8(itemsForSale[arg1].field_1280):
        revert with 0, 'Item not in sale'
    require ext_code.size(address(itemsForSale[arg1].field_256))
    call address(itemsForSale[arg1].field_256).safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(this.address), address(itemsForSale[arg1].field_768), itemsForSale[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor3[address(stor2[arg1].field_256)][stor2[arg1].field_512] = 0
    idx = 0
    while idx < itemsForSaleList.length:
        mem[0] = 1
        if itemsForSaleList[idx].field_0 == arg1:
            if itemsForSaleList.length < 1:
                revert with 0, 17
            if itemsForSaleList.length - 1 >= itemsForSaleList.length:
                revert with 0, 50
            if idx >= itemsForSaleList.length:
                revert with 0, 50
            itemsForSaleList[idx].field_0 = itemsForSaleList[itemsForSaleList.length].field_0
            if not itemsForSaleList.length:
                revert with 0, 49
            mem[0] = 1
            itemsForSaleList[itemsForSaleList.length].field_0 = 0
            itemsForSaleList.length--
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    emit 0x67bc168b: itemsForSale[arg1].field_512, msg.sender, arg1
}

function addItemToSale(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if not stor7[address(arg1)]:
        revert with 0, 'NFT not Accepted'
    require ext_code.size(arg1)
    staticcall arg1.ownerOf(uint256 rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'not Token Owner'
    require ext_code.size(arg1)
    staticcall arg1.getApproved(uint256 rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Approval not granted.'
    if stor3[address(arg1)][arg2]:
        revert with 0, 'item already on sales'
    require ext_code.size(arg1)
    call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    itemsForSale[stor1.length].field_0 = itemsForSaleList.length
    address(itemsForSale[stor1.length].field_256) = arg1
    itemsForSale[stor1.length].field_512 = arg2
    address(itemsForSale[stor1.length].field_768) = msg.sender
    itemsForSale[stor1.length].field_1024 = arg3
    uint8(itemsForSale[stor1.length].field_1280) = 0
    itemsForSaleList.length++
    itemsForSaleList[itemsForSaleList.length].field_0 = itemsForSaleList.length
    stor3[address(arg1)][arg2] = 1
    emit 0xdbd6885e: msg.sender, itemsForSaleList.length, arg3
    return itemsForSaleList.length
}

function claimUserReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0x941ec86400000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(sub_fe68a152Address)
    staticcall sub_fe68a152Address.userCollections(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require mem[96 len 4], address(arg1) << 64 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 0, 65
    if (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 32 < 0 or ceil32(return_data.size) + (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 128 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _5
    require return_data.size >= _4 + (32 * _5) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _5] = mem[_4 + 128 len 32 * _5]
    idx = 0
    while idx < _5:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _33 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[32] = 9
        _34 = sha3(mem[(32 * idx) + ceil32(return_data.size) + 128], 9)
        if currentClaimRatio < itemLastClaimRatioAt[mem[(32 * idx) + ceil32(return_data.size) + 128]]:
            revert with 0, 17
        if currentClaimRatio - itemLastClaimRatioAt[mem[(32 * idx) + ceil32(return_data.size) + 128]]:
            mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[32] = 9
            itemLastClaimRatioAt[mem[(32 * idx) + ceil32(return_data.size) + 128]] = currentClaimRatio
            if claimedReward > !(currentClaimRatio - itemLastClaimRatioAt[mem[(32 * idx) + ceil32(return_data.size) + 128]]):
                revert with 0, 17
            claimedReward = claimedReward + currentClaimRatio - itemLastClaimRatioAt[mem[(32 * idx) + ceil32(return_data.size) + 128]]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require ext_code.size(sub_fe68a152Address)
            staticcall sub_fe68a152Address.ownerOf(uint256 rg1) with:
                    gas gas_remaining wei
                   args _33
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _38 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_38] == mem[_38 + 12 len 20]
            call mem[_38 + 12 len 20] with:
               value currentClaimRatio - stor[_34] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function buyItem(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor3[address(stor2[arg1].field_256)][stor2[arg1].field_512]:
        revert with 0, 'Item not in sale'
    if uint8(itemsForSale[arg1].field_1280):
        revert with 0, 'Item not in sale'
    if arg2 < itemsForSale[arg1].field_1024:
        revert with 0, 'amount below asking price'
    if msg.value < itemsForSale[arg1].field_1024:
        revert with 0, 'insuficient balance'
    if not fees:
        require ext_code.size(address(itemsForSale[arg1].field_256))
        call address(itemsForSale[arg1].field_256).safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args address(this.address), msg.sender, itemsForSale[arg1].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call address(itemsForSale[arg1].field_768) with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        uint8(itemsForSale[arg1].field_1280) = 1
        stor3[address(stor2[arg1].field_256)][stor2[arg1].field_512] = 0
        idx = 0
        while idx < itemsForSaleList.length:
            mem[0] = 1
            if itemsForSaleList[idx].field_0 == arg1:
                if itemsForSaleList.length < 1:
                    revert with 0, 17
                if itemsForSaleList.length - 1 >= itemsForSaleList.length:
                    revert with 0, 50
                if idx >= itemsForSaleList.length:
                    revert with 0, 50
                itemsForSaleList[idx].field_0 = itemsForSaleList[itemsForSaleList.length].field_0
                if not itemsForSaleList.length:
                    revert with 0, 49
                mem[0] = 1
                itemsForSaleList[itemsForSaleList.length].field_0 = 0
                itemsForSaleList.length--
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        emit 0x1dce038f: address(msg.sender), address(itemsForSale[arg1].field_768), arg1, arg2
    else:
        if arg2 and fees > -1 / arg2:
            revert with 0, 17
        if msg.value < arg2 * fees / 100:
            revert with 0, 'insuficient fund'
        if totalReward > !msg.value:
            revert with 0, 17
        totalReward += msg.value
        if currentClaimRatio > !(msg.value / 10000):
            revert with 0, 17
        currentClaimRatio += msg.value / 10000
        if arg2 < arg2 * fees / 100:
            revert with 0, 17
        require ext_code.size(address(itemsForSale[arg1].field_256))
        call address(itemsForSale[arg1].field_256).safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args address(this.address), msg.sender, itemsForSale[arg1].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call address(itemsForSale[arg1].field_768) with:
           value arg2 - (arg2 * fees / 100) wei
             gas 2300 * is_zero(value) wei
        uint8(itemsForSale[arg1].field_1280) = 1
        stor3[address(stor2[arg1].field_256)][stor2[arg1].field_512] = 0
        idx = 0
        while idx < itemsForSaleList.length:
            mem[0] = 1
            if itemsForSaleList[idx].field_0 == arg1:
                if itemsForSaleList.length < 1:
                    revert with 0, 17
                if itemsForSaleList.length - 1 >= itemsForSaleList.length:
                    revert with 0, 50
                if idx >= itemsForSaleList.length:
                    revert with 0, 50
                itemsForSaleList[idx].field_0 = itemsForSaleList[itemsForSaleList.length].field_0
                if not itemsForSaleList.length:
                    revert with 0, 49
                mem[0] = 1
                itemsForSaleList[itemsForSaleList.length].field_0 = 0
                itemsForSaleList.length--
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        emit 0x1dce038f: address(msg.sender), address(itemsForSale[arg1].field_768), arg1, arg2 - (arg2 * fees / 100)
}



}
