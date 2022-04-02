contract main {




// =====================  Runtime code  =====================


#
#  - getUnderlyingPrice(address arg1)
#
const isPriceOracle = 1


address adminAddress;
mapping of uint256 assetPrices;
mapping of address stor2;

function assetPrices(address arg1) payable {
    require calldata.size - 4 >= 32
    return assetPrices[address(arg1)]
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'only admin may call'
    adminAddress = arg1
    emit NewAdmin(adminAddress, arg1);
}

function setDirectPrice(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'only admin may call'
    emit PricePosted(address(arg1), assetPrices[address(arg1)], arg2, arg2);
    assetPrices[address(arg1)] = arg2
}

function sub_0c607acf(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if adminAddress != msg.sender:
        revert with 0, 'only admin may call'
    if not arg2:
        revert with 0, 'invalid feed address'
    if this.address == arg2:
        revert with 0, 'invalid feed address'
    emit FeedSet(address(arg2), Array(len=arg1.length, data=arg1[all]));
    stor2[arg1[all]] = arg2
}

function setUnderlyingPrice(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'only admin may call'
    require ext_code.size(arg1)
    staticcall arg1.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit PricePosted(address(ext_call.return_data[0]), assetPrices[ext_call.return_data[12 len 20]], arg2, arg2);
    assetPrices[address(ext_call.return_data[0])] = arg2
}

function sub_3b39a51c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    mem[arg1.length + ceil32(arg1.length) + 160] = stor2[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]]
    return memory
      from arg1.length + ceil32(arg1.length) + 160
       len 32
}



}
