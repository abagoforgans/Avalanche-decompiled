contract main {




// =====================  Runtime code  =====================


#
#  - deposit(address arg1, uint256 arg2, bytes20 arg3, bytes arg4)
#
const PRESALE_TYPEHASH = 0xce7f5ceae1079d4b1e3a2ffa3a2ed6aa3b32e463f009e4cceed8d321808bd413


address owner;
mapping of uint8 stor1;
uint256 DOMAIN_SEPARATOR;
address WDCTAddress;
address sub_51384938Address;
uint256 sub_a626b852;
address factoryAddress;
array of struct path;

function WDCT() payable {
    return WDCTAddress
}

function DOMAIN_SEPARATOR() payable {
    return DOMAIN_SEPARATOR
}

function sub_51384938(?) payable {
    return sub_51384938Address
}

function owner() payable {
    return owner
}

function sub_a626b852(?) payable {
    return sub_a626b852
}

function path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < path.length
    return path[arg1].field_0
}

function factory() payable {
    return factoryAddress
}

function depositedTxId(bytes20 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(160, 96, arg1)
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setWDCT(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    WDCTAddress = arg1
}

function setUsdFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a626b852 = arg1
}

function setFactory(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    factoryAddress = arg1
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

function sub_c615b533(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_51384938Address)
    call sub_51384938Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_9f089851(?) payable {
    mem[96] = path.length
    if not path.length:
        if path.length < 2:
            revert with 0, 'UniswapV2Library: INVALID_PATH'
        if path.length > test266151307():
            revert with 'NH{q', 65
        mem[(32 * path.length) + 128] = path.length
        mem[64] = (64 * path.length) + 160
        if not path.length:
            if 0 < path.length:
                mem[(32 * path.length) + 160] = sub_a626b852
                if var194003 < 1:
                    revert with 'NH{q', 17
                if var198002 >= var198001:
                    if 0 >= path.length:
                        revert with 'NH{q', 50
                    mem[(64 * path.length) + 160] = sub_a626b852
                    return memory
                      from (64 * path.length) + 160
                       len (127 * path.length) + 32
                if var200001 < path.length:
                    if var212003 > -2:
                        revert with 'NH{q', 17
                    idx = var214002 + 1
                    s = var214006
                    t = var214011
                    while idx < path.length:
                        _11647 = mem[(32 * idx) + 128]
                        if address(s) == mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                        if address(s) < mem[(32 * idx) + 140 len 20]:
                            if not address(s):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            if address(s) == mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                            if address(s) < mem[(32 * idx) + 140 len 20]:
                                if not address(s):
                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                _11685 = mem[64]
                                mem[mem[64] + 32] = address(s)
                                mem[mem[64] + 52] = address(_11647)
                                _11741 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _11743 = sha3(mem[_11741 + 32 len mem[_11741]])
                                mem[_11685 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_11685 + 105] = factoryAddress
                                mem[_11685 + 125] = _11743
                                mem[_11685 + 157] = 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c
                                mem[_11685 + 72] = 85
                                require ext_code.size(Mask(64, 96, sha3(0, factoryAddress, _11743, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96)
                                staticcall Mask(64, 96, sha3(0, factoryAddress, _11743, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96.getReserves() with:
                                        gas gas_remaining wei
                                mem[_11685 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _11685 + ceil32(return_data.size) + 189
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                if t >= mem[(32 * path.length) + 128]:
                                    revert with 'NH{q', 50
                                if mem[(32 * t) + (32 * path.length) + 160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if address(s) == address(s):
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * t) + (32 * path.length) + 160] and 997 > -1 / mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * t) + (32 * path.length) + 160] and ext_call.return_data[50 len 14] > -1 / 997 * mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[18 len 14] > (-997 * mem[(32 * t) + (32 * path.length) + 160]) - 1:
                                        revert with 'NH{q', 17
                                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160]):
                                        revert with 'NH{q', 18
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + (32 * path.length) + 160] = 997 * mem[(32 * t) + (32 * path.length) + 160] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160])
                                else:
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * t) + (32 * path.length) + 160] and 997 > -1 / mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * t) + (32 * path.length) + 160] and ext_call.return_data[18 len 14] > -1 / 997 * mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[50 len 14] > (-997 * mem[(32 * t) + (32 * path.length) + 160]) - 1:
                                        revert with 'NH{q', 17
                                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160]):
                                        revert with 'NH{q', 18
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + (32 * path.length) + 160] = 997 * mem[(32 * t) + (32 * path.length) + 160] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160])
                                if t == -1:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[96] - 1:
                                    if 0 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[_11685 + ceil32(return_data.size) + 189] = mem[(32 * path.length) + 160]
                                    return memory
                                      from _11685 + ceil32(return_data.size) + 189
                                       len 32
                            else:
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                _11686 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                mem[mem[64] + 52] = address(s)
                                _11745 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _11747 = sha3(mem[_11745 + 32 len mem[_11745]])
                                mem[_11686 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_11686 + 105] = factoryAddress
                                mem[_11686 + 125] = _11747
                                mem[_11686 + 157] = 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c
                                mem[_11686 + 72] = 85
                                require ext_code.size(Mask(64, 96, sha3(0, factoryAddress, _11747, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96)
                                staticcall Mask(64, 96, sha3(0, factoryAddress, _11747, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96.getReserves() with:
                                        gas gas_remaining wei
                                mem[_11686 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _11686 + ceil32(return_data.size) + 189
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                if t >= mem[(32 * path.length) + 128]:
                                    revert with 'NH{q', 50
                                if mem[(32 * t) + (32 * path.length) + 160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if address(s) == address(s):
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * t) + (32 * path.length) + 160] and 997 > -1 / mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * t) + (32 * path.length) + 160] and ext_call.return_data[50 len 14] > -1 / 997 * mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[18 len 14] > (-997 * mem[(32 * t) + (32 * path.length) + 160]) - 1:
                                        revert with 'NH{q', 17
                                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160]):
                                        revert with 'NH{q', 18
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + (32 * path.length) + 160] = 997 * mem[(32 * t) + (32 * path.length) + 160] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160])
                                else:
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * t) + (32 * path.length) + 160] and 997 > -1 / mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * t) + (32 * path.length) + 160] and ext_call.return_data[18 len 14] > -1 / 997 * mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[50 len 14] > (-997 * mem[(32 * t) + (32 * path.length) + 160]) - 1:
                                        revert with 'NH{q', 17
                                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160]):
                                        revert with 'NH{q', 18
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + (32 * path.length) + 160] = 997 * mem[(32 * t) + (32 * path.length) + 160] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160])
                                if t == -1:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[96] - 1:
                                    if 0 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[_11686 + ceil32(return_data.size) + 189] = mem[(32 * path.length) + 160]
                                    return memory
                                      from _11686 + ceil32(return_data.size) + 189
                                       len 32
                        else:
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            if address(s) == mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                            if address(s) < mem[(32 * idx) + 140 len 20]:
                                if not address(s):
                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                _11688 = mem[64]
                                mem[mem[64] + 32] = address(s)
                                mem[mem[64] + 52] = address(_11647)
                                _11749 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _11751 = sha3(mem[_11749 + 32 len mem[_11749]])
                                mem[_11688 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_11688 + 105] = factoryAddress
                                mem[_11688 + 125] = _11751
                                mem[_11688 + 157] = 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c
                                mem[_11688 + 72] = 85
                                require ext_code.size(Mask(64, 96, sha3(0, factoryAddress, _11751, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96)
                                staticcall Mask(64, 96, sha3(0, factoryAddress, _11751, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96.getReserves() with:
                                        gas gas_remaining wei
                                mem[_11688 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _11688 + ceil32(return_data.size) + 189
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                if t >= mem[(32 * path.length) + 128]:
                                    revert with 'NH{q', 50
                                if mem[(32 * t) + (32 * path.length) + 160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if address(s) == address(_11647):
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * t) + (32 * path.length) + 160] and 997 > -1 / mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * t) + (32 * path.length) + 160] and ext_call.return_data[50 len 14] > -1 / 997 * mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[18 len 14] > (-997 * mem[(32 * t) + (32 * path.length) + 160]) - 1:
                                        revert with 'NH{q', 17
                                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160]):
                                        revert with 'NH{q', 18
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + (32 * path.length) + 160] = 997 * mem[(32 * t) + (32 * path.length) + 160] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160])
                                else:
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * t) + (32 * path.length) + 160] and 997 > -1 / mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * t) + (32 * path.length) + 160] and ext_call.return_data[18 len 14] > -1 / 997 * mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[50 len 14] > (-997 * mem[(32 * t) + (32 * path.length) + 160]) - 1:
                                        revert with 'NH{q', 17
                                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160]):
                                        revert with 'NH{q', 18
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + (32 * path.length) + 160] = 997 * mem[(32 * t) + (32 * path.length) + 160] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160])
                                if t == -1:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[96] - 1:
                                    if 0 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[_11688 + ceil32(return_data.size) + 189] = mem[(32 * path.length) + 160]
                                    return memory
                                      from _11688 + ceil32(return_data.size) + 189
                                       len 32
                            else:
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                _11689 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                mem[mem[64] + 52] = address(s)
                                _11753 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _11755 = sha3(mem[_11753 + 32 len mem[_11753]])
                                mem[_11689 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_11689 + 105] = factoryAddress
                                mem[_11689 + 125] = _11755
                                mem[_11689 + 157] = 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c
                                mem[_11689 + 72] = 85
                                require ext_code.size(Mask(64, 96, sha3(0, factoryAddress, _11755, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96)
                                staticcall Mask(64, 96, sha3(0, factoryAddress, _11755, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96.getReserves() with:
                                        gas gas_remaining wei
                                mem[_11689 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _11689 + ceil32(return_data.size) + 189
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                if t >= mem[(32 * path.length) + 128]:
                                    revert with 'NH{q', 50
                                if mem[(32 * t) + (32 * path.length) + 160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if address(s) == address(_11647):
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * t) + (32 * path.length) + 160] and 997 > -1 / mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * t) + (32 * path.length) + 160] and ext_call.return_data[50 len 14] > -1 / 997 * mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[18 len 14] > (-997 * mem[(32 * t) + (32 * path.length) + 160]) - 1:
                                        revert with 'NH{q', 17
                                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160]):
                                        revert with 'NH{q', 18
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + (32 * path.length) + 160] = 997 * mem[(32 * t) + (32 * path.length) + 160] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160])
                                else:
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * t) + (32 * path.length) + 160] and 997 > -1 / mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * t) + (32 * path.length) + 160] and ext_call.return_data[18 len 14] > -1 / 997 * mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[50 len 14] > (-997 * mem[(32 * t) + (32 * path.length) + 160]) - 1:
                                        revert with 'NH{q', 17
                                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160]):
                                        revert with 'NH{q', 18
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + (32 * path.length) + 160] = 997 * mem[(32 * t) + (32 * path.length) + 160] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160])
                                if t == -1:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[96] - 1:
                                    if 0 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[_11689 + ceil32(return_data.size) + 189] = mem[(32 * path.length) + 160]
                                    return memory
                                      from _11689 + ceil32(return_data.size) + 189
                                       len 32
                        ('lt', ('add', 1, ('var', 2)), ('add', -1, ('mem', ('range', 96, 32))))
                        if t + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        if t + 1 > -2:
                            revert with 'NH{q', 17
                        idx = t + 2
                        s = mem[(32 * t + 1) + 128]
                        t = t + 1
                        continue 
        else:
            mem[(32 * path.length) + 160 len 32 * path.length] = call.data[calldata.size len 32 * path.length]
            if 0 < path.length:
                mem[(32 * path.length) + 160] = sub_a626b852
                if var195003 < 1:
                    revert with 'NH{q', 17
                if var199002 >= var199001:
                    if 0 >= path.length:
                        revert with 'NH{q', 50
                    mem[(64 * path.length) + 160] = sub_a626b852
                    return memory
                      from (64 * path.length) + 160
                       len (127 * path.length) + 32
                if var201001 < path.length:
                    if var213003 > -2:
                        revert with 'NH{q', 17
                    idx = var215002 + 1
                    s = var215006
                    t = var215011
                    while idx < path.length:
                        _11648 = mem[(32 * idx) + 128]
                        if address(s) == mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                        if address(s) < mem[(32 * idx) + 140 len 20]:
                            if not address(s):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            if address(s) == mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                            if address(s) < mem[(32 * idx) + 140 len 20]:
                                if not address(s):
                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                _11691 = mem[64]
                                mem[mem[64] + 32] = address(s)
                                mem[mem[64] + 52] = address(_11648)
                                _11757 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _11759 = sha3(mem[_11757 + 32 len mem[_11757]])
                                mem[_11691 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_11691 + 105] = factoryAddress
                                mem[_11691 + 125] = _11759
                                mem[_11691 + 157] = 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c
                                mem[_11691 + 72] = 85
                                require ext_code.size(Mask(64, 96, sha3(0, factoryAddress, _11759, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96)
                                staticcall Mask(64, 96, sha3(0, factoryAddress, _11759, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96.getReserves() with:
                                        gas gas_remaining wei
                                mem[_11691 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _11691 + ceil32(return_data.size) + 189
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                if t >= mem[(32 * path.length) + 128]:
                                    revert with 'NH{q', 50
                                if mem[(32 * t) + (32 * path.length) + 160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if address(s) == address(s):
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * t) + (32 * path.length) + 160] and 997 > -1 / mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * t) + (32 * path.length) + 160] and ext_call.return_data[50 len 14] > -1 / 997 * mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[18 len 14] > (-997 * mem[(32 * t) + (32 * path.length) + 160]) - 1:
                                        revert with 'NH{q', 17
                                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160]):
                                        revert with 'NH{q', 18
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + (32 * path.length) + 160] = 997 * mem[(32 * t) + (32 * path.length) + 160] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160])
                                else:
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * t) + (32 * path.length) + 160] and 997 > -1 / mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * t) + (32 * path.length) + 160] and ext_call.return_data[18 len 14] > -1 / 997 * mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[50 len 14] > (-997 * mem[(32 * t) + (32 * path.length) + 160]) - 1:
                                        revert with 'NH{q', 17
                                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160]):
                                        revert with 'NH{q', 18
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + (32 * path.length) + 160] = 997 * mem[(32 * t) + (32 * path.length) + 160] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160])
                                if t == -1:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[96] - 1:
                                    if 0 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[_11691 + ceil32(return_data.size) + 189] = mem[(32 * path.length) + 160]
                                    return memory
                                      from _11691 + ceil32(return_data.size) + 189
                                       len 32
                            else:
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                _11692 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                mem[mem[64] + 52] = address(s)
                                _11761 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _11763 = sha3(mem[_11761 + 32 len mem[_11761]])
                                mem[_11692 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_11692 + 105] = factoryAddress
                                mem[_11692 + 125] = _11763
                                mem[_11692 + 157] = 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c
                                mem[_11692 + 72] = 85
                                require ext_code.size(Mask(64, 96, sha3(0, factoryAddress, _11763, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96)
                                staticcall Mask(64, 96, sha3(0, factoryAddress, _11763, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96.getReserves() with:
                                        gas gas_remaining wei
                                mem[_11692 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _11692 + ceil32(return_data.size) + 189
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                if t >= mem[(32 * path.length) + 128]:
                                    revert with 'NH{q', 50
                                if mem[(32 * t) + (32 * path.length) + 160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if address(s) == address(s):
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * t) + (32 * path.length) + 160] and 997 > -1 / mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * t) + (32 * path.length) + 160] and ext_call.return_data[50 len 14] > -1 / 997 * mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[18 len 14] > (-997 * mem[(32 * t) + (32 * path.length) + 160]) - 1:
                                        revert with 'NH{q', 17
                                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160]):
                                        revert with 'NH{q', 18
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + (32 * path.length) + 160] = 997 * mem[(32 * t) + (32 * path.length) + 160] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160])
                                else:
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * t) + (32 * path.length) + 160] and 997 > -1 / mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * t) + (32 * path.length) + 160] and ext_call.return_data[18 len 14] > -1 / 997 * mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[50 len 14] > (-997 * mem[(32 * t) + (32 * path.length) + 160]) - 1:
                                        revert with 'NH{q', 17
                                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160]):
                                        revert with 'NH{q', 18
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + (32 * path.length) + 160] = 997 * mem[(32 * t) + (32 * path.length) + 160] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160])
                                if t == -1:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[96] - 1:
                                    if 0 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[_11692 + ceil32(return_data.size) + 189] = mem[(32 * path.length) + 160]
                                    return memory
                                      from _11692 + ceil32(return_data.size) + 189
                                       len 32
                        else:
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            if address(s) == mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                            if address(s) < mem[(32 * idx) + 140 len 20]:
                                if not address(s):
                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                _11694 = mem[64]
                                mem[mem[64] + 32] = address(s)
                                mem[mem[64] + 52] = address(_11648)
                                _11765 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _11767 = sha3(mem[_11765 + 32 len mem[_11765]])
                                mem[_11694 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_11694 + 105] = factoryAddress
                                mem[_11694 + 125] = _11767
                                mem[_11694 + 157] = 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c
                                mem[_11694 + 72] = 85
                                require ext_code.size(Mask(64, 96, sha3(0, factoryAddress, _11767, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96)
                                staticcall Mask(64, 96, sha3(0, factoryAddress, _11767, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96.getReserves() with:
                                        gas gas_remaining wei
                                mem[_11694 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _11694 + ceil32(return_data.size) + 189
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                if t >= mem[(32 * path.length) + 128]:
                                    revert with 'NH{q', 50
                                if mem[(32 * t) + (32 * path.length) + 160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if address(s) == address(_11648):
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * t) + (32 * path.length) + 160] and 997 > -1 / mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * t) + (32 * path.length) + 160] and ext_call.return_data[50 len 14] > -1 / 997 * mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[18 len 14] > (-997 * mem[(32 * t) + (32 * path.length) + 160]) - 1:
                                        revert with 'NH{q', 17
                                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160]):
                                        revert with 'NH{q', 18
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + (32 * path.length) + 160] = 997 * mem[(32 * t) + (32 * path.length) + 160] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160])
                                else:
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * t) + (32 * path.length) + 160] and 997 > -1 / mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * t) + (32 * path.length) + 160] and ext_call.return_data[18 len 14] > -1 / 997 * mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[50 len 14] > (-997 * mem[(32 * t) + (32 * path.length) + 160]) - 1:
                                        revert with 'NH{q', 17
                                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160]):
                                        revert with 'NH{q', 18
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + (32 * path.length) + 160] = 997 * mem[(32 * t) + (32 * path.length) + 160] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160])
                                if t == -1:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[96] - 1:
                                    if 0 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[_11694 + ceil32(return_data.size) + 189] = mem[(32 * path.length) + 160]
                                    return memory
                                      from _11694 + ceil32(return_data.size) + 189
                                       len 32
                            else:
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                _11695 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                mem[mem[64] + 52] = address(s)
                                _11769 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _11771 = sha3(mem[_11769 + 32 len mem[_11769]])
                                mem[_11695 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_11695 + 105] = factoryAddress
                                mem[_11695 + 125] = _11771
                                mem[_11695 + 157] = 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c
                                mem[_11695 + 72] = 85
                                require ext_code.size(Mask(64, 96, sha3(0, factoryAddress, _11771, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96)
                                staticcall Mask(64, 96, sha3(0, factoryAddress, _11771, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96.getReserves() with:
                                        gas gas_remaining wei
                                mem[_11695 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _11695 + ceil32(return_data.size) + 189
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                if t >= mem[(32 * path.length) + 128]:
                                    revert with 'NH{q', 50
                                if mem[(32 * t) + (32 * path.length) + 160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if address(s) == address(_11648):
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * t) + (32 * path.length) + 160] and 997 > -1 / mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * t) + (32 * path.length) + 160] and ext_call.return_data[50 len 14] > -1 / 997 * mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[18 len 14] > (-997 * mem[(32 * t) + (32 * path.length) + 160]) - 1:
                                        revert with 'NH{q', 17
                                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160]):
                                        revert with 'NH{q', 18
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + (32 * path.length) + 160] = 997 * mem[(32 * t) + (32 * path.length) + 160] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160])
                                else:
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * t) + (32 * path.length) + 160] and 997 > -1 / mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * t) + (32 * path.length) + 160] and ext_call.return_data[18 len 14] > -1 / 997 * mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[50 len 14] > (-997 * mem[(32 * t) + (32 * path.length) + 160]) - 1:
                                        revert with 'NH{q', 17
                                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160]):
                                        revert with 'NH{q', 18
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + (32 * path.length) + 160] = 997 * mem[(32 * t) + (32 * path.length) + 160] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160])
                                if t == -1:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[96] - 1:
                                    if 0 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[_11695 + ceil32(return_data.size) + 189] = mem[(32 * path.length) + 160]
                                    return memory
                                      from _11695 + ceil32(return_data.size) + 189
                                       len 32
                        ('lt', ('add', 1, ('var', 2)), ('add', -1, ('mem', ('range', 96, 32))))
                        if t + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        if t + 1 > -2:
                            revert with 'NH{q', 17
                        idx = t + 2
                        s = mem[(32 * t + 1) + 128]
                        t = t + 1
                        continue 
    else:
        mem[0] = 7
        mem[128] = address(path.field_0)
        idx = 128
        s = 0
        while (32 * path.length) + 96 > idx:
            mem[idx + 32] = path[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if path.length < 2:
            revert with 0, 'UniswapV2Library: INVALID_PATH'
        if path.length > test266151307():
            revert with 'NH{q', 65
        mem[(32 * path.length) + 128] = path.length
        mem[64] = (64 * path.length) + 160
        if not path.length:
            if 0 < path.length:
                mem[(32 * path.length) + 160] = sub_a626b852
                if var198003 < 1:
                    revert with 'NH{q', 17
                if var202002 >= var202001:
                    if 0 >= path.length:
                        revert with 'NH{q', 50
                    return sub_a626b852
                if var204001 < path.length:
                    if var216003 > -2:
                        revert with 'NH{q', 17
                    idx = var218002 + 1
                    s = var218006
                    t = var218011
                    while idx < path.length:
                        _12871 = mem[(32 * idx) + 128]
                        if address(s) == mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                        if address(s) < mem[(32 * idx) + 140 len 20]:
                            if not address(s):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            if address(s) == mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                            if address(s) < mem[(32 * idx) + 140 len 20]:
                                if not address(s):
                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                _12893 = mem[64]
                                mem[mem[64] + 32] = address(s)
                                mem[mem[64] + 52] = address(_12871)
                                _12917 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _12919 = sha3(mem[_12917 + 32 len mem[_12917]])
                                mem[_12893 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_12893 + 105] = factoryAddress
                                mem[_12893 + 125] = _12919
                                mem[_12893 + 157] = 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c
                                mem[_12893 + 72] = 85
                                require ext_code.size(Mask(64, 96, sha3(0, factoryAddress, _12919, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96)
                                staticcall Mask(64, 96, sha3(0, factoryAddress, _12919, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96.getReserves() with:
                                        gas gas_remaining wei
                                mem[_12893 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _12893 + ceil32(return_data.size) + 189
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                if t >= mem[(32 * path.length) + 128]:
                                    revert with 'NH{q', 50
                                if mem[(32 * t) + (32 * path.length) + 160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if address(s) == address(s):
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * t) + (32 * path.length) + 160] and 997 > -1 / mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * t) + (32 * path.length) + 160] and ext_call.return_data[50 len 14] > -1 / 997 * mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[18 len 14] > (-997 * mem[(32 * t) + (32 * path.length) + 160]) - 1:
                                        revert with 'NH{q', 17
                                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160]):
                                        revert with 'NH{q', 18
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + (32 * path.length) + 160] = 997 * mem[(32 * t) + (32 * path.length) + 160] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160])
                                else:
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * t) + (32 * path.length) + 160] and 997 > -1 / mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * t) + (32 * path.length) + 160] and ext_call.return_data[18 len 14] > -1 / 997 * mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[50 len 14] > (-997 * mem[(32 * t) + (32 * path.length) + 160]) - 1:
                                        revert with 'NH{q', 17
                                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160]):
                                        revert with 'NH{q', 18
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + (32 * path.length) + 160] = 997 * mem[(32 * t) + (32 * path.length) + 160] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160])
                                if t == -1:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[96] - 1:
                                    if 0 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[_12893 + ceil32(return_data.size) + 189] = mem[(32 * path.length) + 160]
                                    return memory
                                      from _12893 + ceil32(return_data.size) + 189
                                       len 32
                            else:
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                _12894 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                mem[mem[64] + 52] = address(s)
                                _12921 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _12923 = sha3(mem[_12921 + 32 len mem[_12921]])
                                mem[_12894 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_12894 + 105] = factoryAddress
                                mem[_12894 + 125] = _12923
                                mem[_12894 + 157] = 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c
                                mem[_12894 + 72] = 85
                                require ext_code.size(Mask(64, 96, sha3(0, factoryAddress, _12923, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96)
                                staticcall Mask(64, 96, sha3(0, factoryAddress, _12923, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96.getReserves() with:
                                        gas gas_remaining wei
                                mem[_12894 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _12894 + ceil32(return_data.size) + 189
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                if t >= mem[(32 * path.length) + 128]:
                                    revert with 'NH{q', 50
                                if mem[(32 * t) + (32 * path.length) + 160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if address(s) == address(s):
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * t) + (32 * path.length) + 160] and 997 > -1 / mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * t) + (32 * path.length) + 160] and ext_call.return_data[50 len 14] > -1 / 997 * mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[18 len 14] > (-997 * mem[(32 * t) + (32 * path.length) + 160]) - 1:
                                        revert with 'NH{q', 17
                                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160]):
                                        revert with 'NH{q', 18
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + (32 * path.length) + 160] = 997 * mem[(32 * t) + (32 * path.length) + 160] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160])
                                else:
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * t) + (32 * path.length) + 160] and 997 > -1 / mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * t) + (32 * path.length) + 160] and ext_call.return_data[18 len 14] > -1 / 997 * mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[50 len 14] > (-997 * mem[(32 * t) + (32 * path.length) + 160]) - 1:
                                        revert with 'NH{q', 17
                                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160]):
                                        revert with 'NH{q', 18
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + (32 * path.length) + 160] = 997 * mem[(32 * t) + (32 * path.length) + 160] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160])
                                if t == -1:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[96] - 1:
                                    if 0 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[_12894 + ceil32(return_data.size) + 189] = mem[(32 * path.length) + 160]
                                    return memory
                                      from _12894 + ceil32(return_data.size) + 189
                                       len 32
                        else:
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            if address(s) == mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                            if address(s) < mem[(32 * idx) + 140 len 20]:
                                if not address(s):
                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                _12896 = mem[64]
                                mem[mem[64] + 32] = address(s)
                                mem[mem[64] + 52] = address(_12871)
                                _12925 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _12927 = sha3(mem[_12925 + 32 len mem[_12925]])
                                mem[_12896 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_12896 + 105] = factoryAddress
                                mem[_12896 + 125] = _12927
                                mem[_12896 + 157] = 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c
                                mem[_12896 + 72] = 85
                                require ext_code.size(Mask(64, 96, sha3(0, factoryAddress, _12927, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96)
                                staticcall Mask(64, 96, sha3(0, factoryAddress, _12927, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96.getReserves() with:
                                        gas gas_remaining wei
                                mem[_12896 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _12896 + ceil32(return_data.size) + 189
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                if t >= mem[(32 * path.length) + 128]:
                                    revert with 'NH{q', 50
                                if mem[(32 * t) + (32 * path.length) + 160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if address(s) == address(_12871):
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * t) + (32 * path.length) + 160] and 997 > -1 / mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * t) + (32 * path.length) + 160] and ext_call.return_data[50 len 14] > -1 / 997 * mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[18 len 14] > (-997 * mem[(32 * t) + (32 * path.length) + 160]) - 1:
                                        revert with 'NH{q', 17
                                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160]):
                                        revert with 'NH{q', 18
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + (32 * path.length) + 160] = 997 * mem[(32 * t) + (32 * path.length) + 160] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160])
                                else:
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * t) + (32 * path.length) + 160] and 997 > -1 / mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * t) + (32 * path.length) + 160] and ext_call.return_data[18 len 14] > -1 / 997 * mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[50 len 14] > (-997 * mem[(32 * t) + (32 * path.length) + 160]) - 1:
                                        revert with 'NH{q', 17
                                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160]):
                                        revert with 'NH{q', 18
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + (32 * path.length) + 160] = 997 * mem[(32 * t) + (32 * path.length) + 160] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160])
                                if t == -1:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[96] - 1:
                                    if 0 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[_12896 + ceil32(return_data.size) + 189] = mem[(32 * path.length) + 160]
                                    return memory
                                      from _12896 + ceil32(return_data.size) + 189
                                       len 32
                            else:
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                _12897 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                mem[mem[64] + 52] = address(s)
                                _12929 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _12931 = sha3(mem[_12929 + 32 len mem[_12929]])
                                mem[_12897 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_12897 + 105] = factoryAddress
                                mem[_12897 + 125] = _12931
                                mem[_12897 + 157] = 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c
                                mem[_12897 + 72] = 85
                                require ext_code.size(Mask(64, 96, sha3(0, factoryAddress, _12931, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96)
                                staticcall Mask(64, 96, sha3(0, factoryAddress, _12931, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96.getReserves() with:
                                        gas gas_remaining wei
                                mem[_12897 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _12897 + ceil32(return_data.size) + 189
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                if t >= mem[(32 * path.length) + 128]:
                                    revert with 'NH{q', 50
                                if mem[(32 * t) + (32 * path.length) + 160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if address(s) == address(_12871):
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * t) + (32 * path.length) + 160] and 997 > -1 / mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * t) + (32 * path.length) + 160] and ext_call.return_data[50 len 14] > -1 / 997 * mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[18 len 14] > (-997 * mem[(32 * t) + (32 * path.length) + 160]) - 1:
                                        revert with 'NH{q', 17
                                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160]):
                                        revert with 'NH{q', 18
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + (32 * path.length) + 160] = 997 * mem[(32 * t) + (32 * path.length) + 160] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160])
                                else:
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * t) + (32 * path.length) + 160] and 997 > -1 / mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * t) + (32 * path.length) + 160] and ext_call.return_data[18 len 14] > -1 / 997 * mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[50 len 14] > (-997 * mem[(32 * t) + (32 * path.length) + 160]) - 1:
                                        revert with 'NH{q', 17
                                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160]):
                                        revert with 'NH{q', 18
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + (32 * path.length) + 160] = 997 * mem[(32 * t) + (32 * path.length) + 160] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160])
                                if t == -1:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[96] - 1:
                                    if 0 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[_12897 + ceil32(return_data.size) + 189] = mem[(32 * path.length) + 160]
                                    return memory
                                      from _12897 + ceil32(return_data.size) + 189
                                       len 32
                        ('lt', ('add', 1, ('var', 2)), ('add', -1, ('mem', ('range', 96, 32))))
                        if t + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        if t + 1 > -2:
                            revert with 'NH{q', 17
                        idx = t + 2
                        s = mem[(32 * t + 1) + 128]
                        t = t + 1
                        continue 
        else:
            mem[(32 * path.length) + 160 len 32 * path.length] = call.data[calldata.size len 32 * path.length]
            if 0 < path.length:
                mem[(32 * path.length) + 160] = sub_a626b852
                if var199003 < 1:
                    revert with 'NH{q', 17
                if var203002 >= var203001:
                    if 0 >= path.length:
                        revert with 'NH{q', 50
                    return sub_a626b852
                if var205001 < path.length:
                    if var217003 > -2:
                        revert with 'NH{q', 17
                    idx = var219002 + 1
                    s = var219006
                    t = var219011
                    while idx < path.length:
                        _12872 = mem[(32 * idx) + 128]
                        if address(s) == mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                        if address(s) < mem[(32 * idx) + 140 len 20]:
                            if not address(s):
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            if address(s) == mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                            if address(s) < mem[(32 * idx) + 140 len 20]:
                                if not address(s):
                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                _12899 = mem[64]
                                mem[mem[64] + 32] = address(s)
                                mem[mem[64] + 52] = address(_12872)
                                _12933 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _12935 = sha3(mem[_12933 + 32 len mem[_12933]])
                                mem[_12899 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_12899 + 105] = factoryAddress
                                mem[_12899 + 125] = _12935
                                mem[_12899 + 157] = 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c
                                mem[_12899 + 72] = 85
                                require ext_code.size(Mask(64, 96, sha3(0, factoryAddress, _12935, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96)
                                staticcall Mask(64, 96, sha3(0, factoryAddress, _12935, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96.getReserves() with:
                                        gas gas_remaining wei
                                mem[_12899 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _12899 + ceil32(return_data.size) + 189
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                if t >= mem[(32 * path.length) + 128]:
                                    revert with 'NH{q', 50
                                if mem[(32 * t) + (32 * path.length) + 160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if address(s) == address(s):
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * t) + (32 * path.length) + 160] and 997 > -1 / mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * t) + (32 * path.length) + 160] and ext_call.return_data[50 len 14] > -1 / 997 * mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[18 len 14] > (-997 * mem[(32 * t) + (32 * path.length) + 160]) - 1:
                                        revert with 'NH{q', 17
                                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160]):
                                        revert with 'NH{q', 18
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + (32 * path.length) + 160] = 997 * mem[(32 * t) + (32 * path.length) + 160] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160])
                                else:
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * t) + (32 * path.length) + 160] and 997 > -1 / mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * t) + (32 * path.length) + 160] and ext_call.return_data[18 len 14] > -1 / 997 * mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[50 len 14] > (-997 * mem[(32 * t) + (32 * path.length) + 160]) - 1:
                                        revert with 'NH{q', 17
                                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160]):
                                        revert with 'NH{q', 18
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + (32 * path.length) + 160] = 997 * mem[(32 * t) + (32 * path.length) + 160] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160])
                                if t == -1:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[96] - 1:
                                    if 0 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[_12899 + ceil32(return_data.size) + 189] = mem[(32 * path.length) + 160]
                                    return memory
                                      from _12899 + ceil32(return_data.size) + 189
                                       len 32
                            else:
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                _12900 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                mem[mem[64] + 52] = address(s)
                                _12937 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _12939 = sha3(mem[_12937 + 32 len mem[_12937]])
                                mem[_12900 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_12900 + 105] = factoryAddress
                                mem[_12900 + 125] = _12939
                                mem[_12900 + 157] = 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c
                                mem[_12900 + 72] = 85
                                require ext_code.size(Mask(64, 96, sha3(0, factoryAddress, _12939, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96)
                                staticcall Mask(64, 96, sha3(0, factoryAddress, _12939, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96.getReserves() with:
                                        gas gas_remaining wei
                                mem[_12900 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _12900 + ceil32(return_data.size) + 189
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                if t >= mem[(32 * path.length) + 128]:
                                    revert with 'NH{q', 50
                                if mem[(32 * t) + (32 * path.length) + 160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if address(s) == address(s):
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * t) + (32 * path.length) + 160] and 997 > -1 / mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * t) + (32 * path.length) + 160] and ext_call.return_data[50 len 14] > -1 / 997 * mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[18 len 14] > (-997 * mem[(32 * t) + (32 * path.length) + 160]) - 1:
                                        revert with 'NH{q', 17
                                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160]):
                                        revert with 'NH{q', 18
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + (32 * path.length) + 160] = 997 * mem[(32 * t) + (32 * path.length) + 160] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160])
                                else:
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * t) + (32 * path.length) + 160] and 997 > -1 / mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * t) + (32 * path.length) + 160] and ext_call.return_data[18 len 14] > -1 / 997 * mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[50 len 14] > (-997 * mem[(32 * t) + (32 * path.length) + 160]) - 1:
                                        revert with 'NH{q', 17
                                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160]):
                                        revert with 'NH{q', 18
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + (32 * path.length) + 160] = 997 * mem[(32 * t) + (32 * path.length) + 160] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160])
                                if t == -1:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[96] - 1:
                                    if 0 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[_12900 + ceil32(return_data.size) + 189] = mem[(32 * path.length) + 160]
                                    return memory
                                      from _12900 + ceil32(return_data.size) + 189
                                       len 32
                        else:
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            if address(s) == mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                            if address(s) < mem[(32 * idx) + 140 len 20]:
                                if not address(s):
                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                _12902 = mem[64]
                                mem[mem[64] + 32] = address(s)
                                mem[mem[64] + 52] = address(_12872)
                                _12941 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _12943 = sha3(mem[_12941 + 32 len mem[_12941]])
                                mem[_12902 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_12902 + 105] = factoryAddress
                                mem[_12902 + 125] = _12943
                                mem[_12902 + 157] = 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c
                                mem[_12902 + 72] = 85
                                require ext_code.size(Mask(64, 96, sha3(0, factoryAddress, _12943, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96)
                                staticcall Mask(64, 96, sha3(0, factoryAddress, _12943, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96.getReserves() with:
                                        gas gas_remaining wei
                                mem[_12902 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _12902 + ceil32(return_data.size) + 189
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                if t >= mem[(32 * path.length) + 128]:
                                    revert with 'NH{q', 50
                                if mem[(32 * t) + (32 * path.length) + 160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if address(s) == address(_12872):
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * t) + (32 * path.length) + 160] and 997 > -1 / mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * t) + (32 * path.length) + 160] and ext_call.return_data[50 len 14] > -1 / 997 * mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[18 len 14] > (-997 * mem[(32 * t) + (32 * path.length) + 160]) - 1:
                                        revert with 'NH{q', 17
                                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160]):
                                        revert with 'NH{q', 18
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + (32 * path.length) + 160] = 997 * mem[(32 * t) + (32 * path.length) + 160] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160])
                                else:
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * t) + (32 * path.length) + 160] and 997 > -1 / mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * t) + (32 * path.length) + 160] and ext_call.return_data[18 len 14] > -1 / 997 * mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[50 len 14] > (-997 * mem[(32 * t) + (32 * path.length) + 160]) - 1:
                                        revert with 'NH{q', 17
                                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160]):
                                        revert with 'NH{q', 18
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + (32 * path.length) + 160] = 997 * mem[(32 * t) + (32 * path.length) + 160] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160])
                                if t == -1:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[96] - 1:
                                    if 0 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[_12902 + ceil32(return_data.size) + 189] = mem[(32 * path.length) + 160]
                                    return memory
                                      from _12902 + ceil32(return_data.size) + 189
                                       len 32
                            else:
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                _12903 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                mem[mem[64] + 52] = address(s)
                                _12945 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _12947 = sha3(mem[_12945 + 32 len mem[_12945]])
                                mem[_12903 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_12903 + 105] = factoryAddress
                                mem[_12903 + 125] = _12947
                                mem[_12903 + 157] = 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c
                                mem[_12903 + 72] = 85
                                require ext_code.size(Mask(64, 96, sha3(0, factoryAddress, _12947, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96)
                                staticcall Mask(64, 96, sha3(0, factoryAddress, _12947, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96.getReserves() with:
                                        gas gas_remaining wei
                                mem[_12903 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _12903 + ceil32(return_data.size) + 189
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                if t >= mem[(32 * path.length) + 128]:
                                    revert with 'NH{q', 50
                                if mem[(32 * t) + (32 * path.length) + 160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if address(s) == address(_12872):
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * t) + (32 * path.length) + 160] and 997 > -1 / mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * t) + (32 * path.length) + 160] and ext_call.return_data[50 len 14] > -1 / 997 * mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[18 len 14] > (-997 * mem[(32 * t) + (32 * path.length) + 160]) - 1:
                                        revert with 'NH{q', 17
                                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160]):
                                        revert with 'NH{q', 18
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + (32 * path.length) + 160] = 997 * mem[(32 * t) + (32 * path.length) + 160] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160])
                                else:
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[(32 * t) + (32 * path.length) + 160] and 997 > -1 / mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if 997 * mem[(32 * t) + (32 * path.length) + 160] and ext_call.return_data[18 len 14] > -1 / 997 * mem[(32 * t) + (32 * path.length) + 160]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if 1000 * ext_call.return_data[50 len 14] > (-997 * mem[(32 * t) + (32 * path.length) + 160]) - 1:
                                        revert with 'NH{q', 17
                                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160]):
                                        revert with 'NH{q', 18
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + (32 * path.length) + 160] = 997 * mem[(32 * t) + (32 * path.length) + 160] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * mem[(32 * t) + (32 * path.length) + 160])
                                if t == -1:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[96] - 1:
                                    if 0 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    mem[_12903 + ceil32(return_data.size) + 189] = mem[(32 * path.length) + 160]
                                    return memory
                                      from _12903 + ceil32(return_data.size) + 189
                                       len 32
                        ('lt', ('add', 1, ('var', 2)), ('add', -1, ('mem', ('range', 96, 32))))
                        if t + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        if t + 1 > -2:
                            revert with 'NH{q', 17
                        idx = t + 2
                        s = mem[(32 * t + 1) + 128]
                        t = t + 1
                        continue 
    revert with 'NH{q', 50
}



}
