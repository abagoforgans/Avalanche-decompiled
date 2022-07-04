contract main {




// =====================  Runtime code  =====================


#
#  - distribute(uint256 arg1, bool arg2)
#  - sub_68f59208(?)
#  - _fallback()
#
address owner;
address uniswapV2RouterAddress;
address uniswapV2PairAddress;
address stor3;
address sub_484d3fffAddress;
address sub_37afde8aAddress;
uint32 stor7;
address sub_864bd587Address;
uint256 stor7;
address sub_c0fe34c3Address;
uint256 sub_d6e88eaa;
uint256 sub_8fa8eb82;
uint256 sub_b82a1abd;
uint256 sub_80c76384;
uint256 sub_5631dcb8;
mapping of uint8 stor14;

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function sub_37afde8a(?) {
    return sub_37afde8aAddress
}

function sub_4666670d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor14[arg1])
}

function sub_484d3fff(?) {
    return sub_484d3fffAddress
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function sub_5631dcb8(?) {
    return sub_5631dcb8
}

function sub_80c76384(?) {
    return sub_80c76384
}

function sub_864bd587(?) {
    return address(sub_864bd587Address)
}

function owner() {
    return owner
}

function sub_8fa8eb82(?) {
    return sub_8fa8eb82
}

function sub_b82a1abd(?) {
    return sub_b82a1abd
}

function sub_c0fe34c3(?) {
    return sub_c0fe34c3Address
}

function sub_d6e88eaa(?) {
    return sub_d6e88eaa
}

function getAddress() {
    return uniswapV2PairAddress, uniswapV2RouterAddress, sub_37afde8aAddress, address(sub_864bd587Address), sub_c0fe34c3Address
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setLimit(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d6e88eaa = arg1
    sub_8fa8eb82 = arg2
}

function setToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_484d3fffAddress = arg1
    stor3 = arg2
}

function sub_b4fad1b5(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(sub_864bd587Address) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_c335c722(?) {
    require calldata.size - 4 >= 64
    require arg1 < 3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 2:
        revert with 0, 33
    if arg1 == 1:
        sub_80c76384 = arg2
    else:
        if arg1 > 2:
            revert with 0, 33
        if arg1 != 2:
            sub_b82a1abd = arg2
        else:
            sub_5631dcb8 = arg2
}

function sub_684b0dd2(?) {
    require calldata.size - 4 >= 64
    require arg1 < 3
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 2:
        revert with 0, 33
    if arg1 == 1:
        address(sub_864bd587Address) = address(arg2)
    else:
        if arg1 > 2:
            revert with 0, 33
        if arg1 != 2:
            sub_37afde8aAddress = address(arg2)
        else:
            sub_c0fe34c3Address = address(arg2)
}

function sub_d08429a9(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uniswapV2RouterAddress = address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WAVAX() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args sub_484d3fffAddress, address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    uniswapV2PairAddress = ext_call.return_data[12 len 20]
    if 1 == bool(stor14[ext_call.return_data[12 len 20]]):
        revert with 0, 'TKN: Automated market maker pair is already set to that value'
    stor14[address(ext_call.return_data[0])] = 1
    emit SetAutomatedMarketMakerPair(ext_call.return_data[12 len 20], 1);
    emit UpdateUniswapV2Router(address(arg1), uniswapV2RouterAddress);
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uniswapV2RouterAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TKN: The router already has that address'
    uniswapV2RouterAddress = arg1
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WAVAX() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args sub_484d3fffAddress, address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    uniswapV2PairAddress = ext_call.return_data[12 len 20]
    if 1 == bool(stor14[ext_call.return_data[12 len 20]]):
        revert with 0, 'TKN: Automated market maker pair is already set to that value'
    stor14[address(ext_call.return_data[0])] = 1
    emit SetAutomatedMarketMakerPair(ext_call.return_data[12 len 20], 1);
    emit UpdateUniswapV2Router(arg1, uniswapV2RouterAddress);
}

function withdrawToken() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(sub_484d3fffAddress)
    staticcall sub_484d3fffAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = address(sub_864bd587Address)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor7)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_484d3fffAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call sub_484d3fffAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}



}
