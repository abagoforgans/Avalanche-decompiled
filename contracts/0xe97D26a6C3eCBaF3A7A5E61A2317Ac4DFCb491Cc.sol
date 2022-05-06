contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
mapping of struct listing;
array of uint256 stor3;
array of struct stor4;
array of uint256 stor5;
mapping of uint256 stor6;

function getListing(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'invalid listing id'
    if arg1 > stor1:
        revert with 0, 'invalid listing id'
    return listing[arg1].field_0, 
           listing[arg1].field_256,
           listing[arg1].field_512,
           listing[arg1].field_768,
           listing[arg1].field_1024,
           bool(listing[arg1].field_1184)
}

function _fallback() payable {
    revert
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x4e2312e000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function sub_d8cba251(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor4[address(arg1)].field_0:
        mem[128] = stor4[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * stor4[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = stor4[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor4[address(arg1)].field_0, data=mem[128 len 32 * stor4[address(arg1)].field_0])
    mem[(32 * stor4[address(arg1)].field_0) + 128] = 32
    mem[(32 * stor4[address(arg1)].field_0) + 160] = stor4[address(arg1)].field_0
    mem[(32 * stor4[address(arg1)].field_0) + 192 len 32 * stor4[address(arg1)].field_0] = mem[128 len 32 * stor4[address(arg1)].field_0]
    return memory
      from (32 * stor4[address(arg1)].field_0) + 128
       len (96 * stor4[address(arg1)].field_0) + 64
}

function putOnSale(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg2 <= 0:
        revert with 0, 'amount cannot be zero'
    if arg3 <= 0:
        revert with 0, 'price cannot be zero'
    if arg1 <= 0:
        revert with 0, 'tokenId cannot be zero'
    require ext_code.size(stor0)
    call stor0.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), address(this.address), arg1, arg2, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1++
    listing[stor1].field_0 = arg1
    listing[stor1].field_256 = arg2
    listing[stor1].field_512 = arg3
    listing[stor1].field_768 = msg.sender or Mask(96, 160, listing[stor1].field_768)
    if not stor3[msg.sender][1][stor1]:
        stor3[msg.sender]++
        stor3[msg.sender][stor3[msg.sender]] = stor1
        stor3[msg.sender][1][stor1] = stor3[msg.sender]
    if not stor4[msg.sender][1][stor1].field_0:
        stor4[msg.sender].field_0++
        stor4[msg.sender][stor4[msg.sender].field_0].field_0 = stor1
        stor4[msg.sender][1][stor1].field_0 = stor4[msg.sender].field_0
    if not stor6[stor1]:
        stor5.length++
        stor5[stor5.length] = stor1
        stor6[stor1] = stor5.length
    emit 0xc0372598: msg.sender, stor1
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg3.length) + 97 < 96 or ceil32(32 * arg3.length) + 97 > test266151307():
        revert with 0, 65
    require calldata.size >= arg3 + (32 * arg3.length) + 36
    s = arg3 + 36
    t = 128
    idx = 0
    while idx < arg3.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg4.length) + 98 < 97 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98 > test266151307():
        revert with 0, 65
    require calldata.size >= arg4 + (32 * arg4.length) + 36
    s = arg4 + 36
    t = ceil32(32 * arg3.length) + 129
    idx = 0
    while idx < arg4.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 99 < 98 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function cancelSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    if listing[arg1].field_768 != msg.sender:
        revert with 0, 'you did not create this listing'
    if listing[arg1].field_1184:
        revert with 0, 'this listing is already closed'
    listing[arg1].field_1184 = 1
    require ext_code.size(stor0)
    call stor0.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args 0, 0, msg.sender, listing[arg1].field_0, listing[arg1].field_256, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor6[arg1]:
        if stor6[arg1] < 1:
            revert with 0, 17
        if stor5.length < 1:
            revert with 0, 17
        if stor5.length - 1 != stor6[arg1] - 1:
            if stor5.length - 1 >= stor5.length:
                revert with 0, 50
            if stor6[arg1] - 1 >= stor5.length:
                revert with 0, 50
            stor5[stor6[arg1]] = stor5[stor5.length]
            stor6[stor5[stor5.length]] = stor6[arg1]
        if not stor5.length:
            revert with 0, 49
        stor5[stor5.length] = 0
        stor5.length--
        stor6[arg1] = 0
    if stor4[stor2[arg1].field_768][1][arg1].field_0:
        if stor4[stor2[arg1].field_768][1][arg1].field_0 < 1:
            revert with 0, 17
        if stor4[stor2[arg1].field_768].field_0 < 1:
            revert with 0, 17
        if stor4[stor2[arg1].field_768].field_0 - 1 != stor4[stor2[arg1].field_768][1][arg1].field_0 - 1:
            if stor4[stor2[arg1].field_768].field_0 - 1 >= stor4[stor2[arg1].field_768].field_0:
                revert with 0, 50
            if stor4[stor2[arg1].field_768][1][arg1].field_0 - 1 >= stor4[stor2[arg1].field_768].field_0:
                revert with 0, 50
            stor4[stor2[arg1].field_768][stor4[stor2[arg1].field_768][1][arg1].field_0].field_0 = stor4[stor2[arg1].field_768][stor4[stor2[arg1].field_768].field_0].field_0
            stor4[stor2[arg1].field_768][1][stor4[stor2[arg1].field_768][stor4[stor2[arg1].field_768].field_0].field_0].field_0 = stor4[stor2[arg1].field_768][1][arg1].field_0
        if not stor4[stor2[arg1].field_768].field_0:
            revert with 0, 49
        stor4[stor2[arg1].field_768][stor4[stor2[arg1].field_768].field_0].field_0 = 0
        stor4[stor2[arg1].field_768].field_0--
        stor4[stor2[arg1].field_768][1][arg1].field_0 = 0
    emit ListingCancelled(arg1);
}

function buyListing(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if listing[arg1].field_1184:
        revert with 0, 'this listing is already closed'
    if listing[arg1].field_512 != msg.value:
        revert with 0, 'invalid value sent'
    listing[arg1].field_1024 = msg.sender
    listing[arg1].field_1184 = 1
    listing[arg1].field_1192 = Mask(88, 168, msg.sender) >> 168
    require ext_code.size(stor0)
    call stor0.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args 0, 0, msg.sender, listing[arg1].field_0, listing[arg1].field_256, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call listing[arg1].field_768 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if stor6[arg1]:
        if stor6[arg1] < 1:
            revert with 0, 17
        if stor5.length < 1:
            revert with 0, 17
        if stor5.length - 1 != stor6[arg1] - 1:
            if stor5.length - 1 >= stor5.length:
                revert with 0, 50
            if stor6[arg1] - 1 >= stor5.length:
                revert with 0, 50
            stor5[stor6[arg1]] = stor5[stor5.length]
            stor6[stor5[stor5.length]] = stor6[arg1]
        if not stor5.length:
            revert with 0, 49
        stor5[stor5.length] = 0
        stor5.length--
        stor6[arg1] = 0
    if stor4[stor2[arg1].field_768][1][arg1].field_0:
        if stor4[stor2[arg1].field_768][1][arg1].field_0 < 1:
            revert with 0, 17
        if stor4[stor2[arg1].field_768].field_0 < 1:
            revert with 0, 17
        if stor4[stor2[arg1].field_768].field_0 - 1 != stor4[stor2[arg1].field_768][1][arg1].field_0 - 1:
            if stor4[stor2[arg1].field_768].field_0 - 1 >= stor4[stor2[arg1].field_768].field_0:
                revert with 0, 50
            if stor4[stor2[arg1].field_768][1][arg1].field_0 - 1 >= stor4[stor2[arg1].field_768].field_0:
                revert with 0, 50
            stor4[stor2[arg1].field_768][stor4[stor2[arg1].field_768][1][arg1].field_0].field_0 = stor4[stor2[arg1].field_768][stor4[stor2[arg1].field_768].field_0].field_0
            stor4[stor2[arg1].field_768][1][stor4[stor2[arg1].field_768][stor4[stor2[arg1].field_768].field_0].field_0].field_0 = stor4[stor2[arg1].field_768][1][arg1].field_0
        if not stor4[stor2[arg1].field_768].field_0:
            revert with 0, 49
        stor4[stor2[arg1].field_768][stor4[stor2[arg1].field_768].field_0].field_0 = 0
        stor4[stor2[arg1].field_768].field_0--
        stor4[stor2[arg1].field_768][1][arg1].field_0 = 0
    emit Trade(listing[arg1].field_768, msg.sender, arg1);
}



}
