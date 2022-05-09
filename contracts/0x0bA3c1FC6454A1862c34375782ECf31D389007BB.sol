contract main {




// =====================  Runtime code  =====================


#
#  - sub_9f089851(?)
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

function deposit(address arg1, uint256 arg2, bytes20 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == Mask(160, 96, arg3)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[0] = Mask(160, 96, arg3)
    mem[32] = 1
    if stor1[Mask(160, 96, arg3)]:
        revert with 0, 'WDCThandler: txId already used'
    mem[96] = path.length
    if path.length:
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
            if 0 >= path.length:
                revert with 'NH{q', 50
            mem[(32 * path.length) + 160] = sub_a626b852
            if var232003 < 1:
                revert with 'NH{q', 17
            if var236002 < var236001:
                if var238001 < path.length:
                    if var250003 > -2:
                        revert with 'NH{q', 17
                    idx = var252002 + 1
                    s = var252006
                    t = var252011
                    while idx < path.length:
                        _15850 = mem[(32 * idx) + 128]
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
                                _15872 = mem[64]
                                mem[mem[64] + 32] = address(s)
                                mem[mem[64] + 52] = address(_15850)
                                _16024 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _16026 = sha3(mem[_16024 + 32 len mem[_16024]])
                                mem[_15872 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_15872 + 105] = factoryAddress
                                mem[_15872 + 125] = _16026
                                mem[_15872 + 157] = 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c
                                mem[_15872 + 72] = 85
                                require ext_code.size(Mask(64, 96, sha3(0, factoryAddress, _16026, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96)
                                staticcall Mask(64, 96, sha3(0, factoryAddress, _16026, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96.getReserves() with:
                                        gas gas_remaining wei
                                mem[_15872 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _15872 + ceil32(return_data.size) + 189
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
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if t + 1 > -2:
                                            revert with 'NH{q', 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    if 0 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    require ext_code.size(sub_51384938Address)
                                    call sub_51384938Address.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), mem[(32 * path.length) + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    # nil
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
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if t + 1 > -2:
                                            revert with 'NH{q', 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    if 0 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    require ext_code.size(sub_51384938Address)
                                    call sub_51384938Address.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), mem[(32 * path.length) + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    # nil
                            else:
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                _15873 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                mem[mem[64] + 52] = address(s)
                                _16028 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _16030 = sha3(mem[_16028 + 32 len mem[_16028]])
                                mem[_15873 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_15873 + 105] = factoryAddress
                                mem[_15873 + 125] = _16030
                                mem[_15873 + 157] = 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c
                                mem[_15873 + 72] = 85
                                require ext_code.size(Mask(64, 96, sha3(0, factoryAddress, _16030, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96)
                                staticcall Mask(64, 96, sha3(0, factoryAddress, _16030, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96.getReserves() with:
                                        gas gas_remaining wei
                                mem[_15873 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _15873 + ceil32(return_data.size) + 189
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
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if t + 1 > -2:
                                            revert with 'NH{q', 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    if 0 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    require ext_code.size(sub_51384938Address)
                                    call sub_51384938Address.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), mem[(32 * path.length) + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    # nil
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
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if t + 1 > -2:
                                            revert with 'NH{q', 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    if 0 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    require ext_code.size(sub_51384938Address)
                                    call sub_51384938Address.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), mem[(32 * path.length) + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    # nil
                        else:
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            if address(s) == mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                            if address(s) < mem[(32 * idx) + 140 len 20]:
                                if not address(s):
                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                _15875 = mem[64]
                                mem[mem[64] + 32] = address(s)
                                mem[mem[64] + 52] = address(_15850)
                                _16032 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _16034 = sha3(mem[_16032 + 32 len mem[_16032]])
                                mem[_15875 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_15875 + 105] = factoryAddress
                                mem[_15875 + 125] = _16034
                                mem[_15875 + 157] = 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c
                                mem[_15875 + 72] = 85
                                require ext_code.size(Mask(64, 96, sha3(0, factoryAddress, _16034, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96)
                                staticcall Mask(64, 96, sha3(0, factoryAddress, _16034, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96.getReserves() with:
                                        gas gas_remaining wei
                                mem[_15875 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _15875 + ceil32(return_data.size) + 189
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                if t >= mem[(32 * path.length) + 128]:
                                    revert with 'NH{q', 50
                                if mem[(32 * t) + (32 * path.length) + 160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if address(s) == address(_15850):
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
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if t + 1 > -2:
                                            revert with 'NH{q', 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    if 0 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    require ext_code.size(sub_51384938Address)
                                    call sub_51384938Address.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), mem[(32 * path.length) + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    # nil
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
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if t + 1 > -2:
                                            revert with 'NH{q', 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    if 0 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    require ext_code.size(sub_51384938Address)
                                    call sub_51384938Address.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), mem[(32 * path.length) + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    # nil
                            else:
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                _15876 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                mem[mem[64] + 52] = address(s)
                                _16036 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _16038 = sha3(mem[_16036 + 32 len mem[_16036]])
                                mem[_15876 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_15876 + 105] = factoryAddress
                                mem[_15876 + 125] = _16038
                                mem[_15876 + 157] = 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c
                                mem[_15876 + 72] = 85
                                require ext_code.size(Mask(64, 96, sha3(0, factoryAddress, _16038, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96)
                                staticcall Mask(64, 96, sha3(0, factoryAddress, _16038, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96.getReserves() with:
                                        gas gas_remaining wei
                                mem[_15876 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _15876 + ceil32(return_data.size) + 189
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                if t >= mem[(32 * path.length) + 128]:
                                    revert with 'NH{q', 50
                                if mem[(32 * t) + (32 * path.length) + 160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if address(s) == address(_15850):
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
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if t + 1 > -2:
                                            revert with 'NH{q', 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    if 0 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    require ext_code.size(sub_51384938Address)
                                    call sub_51384938Address.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), mem[(32 * path.length) + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    # nil
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
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if t + 1 > -2:
                                            revert with 'NH{q', 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    if 0 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    require ext_code.size(sub_51384938Address)
                                    call sub_51384938Address.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), mem[(32 * path.length) + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    # nil
                revert with 'NH{q', 50
        else:
            mem[(32 * path.length) + 160 len 32 * path.length] = call.data[calldata.size len 32 * path.length]
            if 0 >= path.length:
                revert with 'NH{q', 50
            mem[(32 * path.length) + 160] = sub_a626b852
            if var233003 < 1:
                revert with 'NH{q', 17
            if var237002 < var237001:
                if var239001 < path.length:
                    if var251003 > -2:
                        revert with 'NH{q', 17
                    idx = var253002 + 1
                    s = var253006
                    t = var253011
                    while idx < path.length:
                        _15851 = mem[(32 * idx) + 128]
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
                                _15878 = mem[64]
                                mem[mem[64] + 32] = address(s)
                                mem[mem[64] + 52] = address(_15851)
                                _16040 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _16042 = sha3(mem[_16040 + 32 len mem[_16040]])
                                mem[_15878 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_15878 + 105] = factoryAddress
                                mem[_15878 + 125] = _16042
                                mem[_15878 + 157] = 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c
                                mem[_15878 + 72] = 85
                                require ext_code.size(Mask(64, 96, sha3(0, factoryAddress, _16042, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96)
                                staticcall Mask(64, 96, sha3(0, factoryAddress, _16042, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96.getReserves() with:
                                        gas gas_remaining wei
                                mem[_15878 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _15878 + ceil32(return_data.size) + 189
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
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if t + 1 > -2:
                                            revert with 'NH{q', 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    if 0 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    require ext_code.size(sub_51384938Address)
                                    call sub_51384938Address.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), mem[(32 * path.length) + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    # nil
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
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if t + 1 > -2:
                                            revert with 'NH{q', 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    if 0 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    require ext_code.size(sub_51384938Address)
                                    call sub_51384938Address.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), mem[(32 * path.length) + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    # nil
                            else:
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                _15879 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                mem[mem[64] + 52] = address(s)
                                _16044 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _16046 = sha3(mem[_16044 + 32 len mem[_16044]])
                                mem[_15879 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_15879 + 105] = factoryAddress
                                mem[_15879 + 125] = _16046
                                mem[_15879 + 157] = 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c
                                mem[_15879 + 72] = 85
                                require ext_code.size(Mask(64, 96, sha3(0, factoryAddress, _16046, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96)
                                staticcall Mask(64, 96, sha3(0, factoryAddress, _16046, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96.getReserves() with:
                                        gas gas_remaining wei
                                mem[_15879 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _15879 + ceil32(return_data.size) + 189
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
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if t + 1 > -2:
                                            revert with 'NH{q', 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    if 0 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    require ext_code.size(sub_51384938Address)
                                    call sub_51384938Address.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), mem[(32 * path.length) + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    # nil
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
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if t + 1 > -2:
                                            revert with 'NH{q', 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    if 0 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    require ext_code.size(sub_51384938Address)
                                    call sub_51384938Address.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), mem[(32 * path.length) + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    # nil
                        else:
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            if address(s) == mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                            if address(s) < mem[(32 * idx) + 140 len 20]:
                                if not address(s):
                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                _15881 = mem[64]
                                mem[mem[64] + 32] = address(s)
                                mem[mem[64] + 52] = address(_15851)
                                _16048 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _16050 = sha3(mem[_16048 + 32 len mem[_16048]])
                                mem[_15881 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_15881 + 105] = factoryAddress
                                mem[_15881 + 125] = _16050
                                mem[_15881 + 157] = 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c
                                mem[_15881 + 72] = 85
                                require ext_code.size(Mask(64, 96, sha3(0, factoryAddress, _16050, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96)
                                staticcall Mask(64, 96, sha3(0, factoryAddress, _16050, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96.getReserves() with:
                                        gas gas_remaining wei
                                mem[_15881 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _15881 + ceil32(return_data.size) + 189
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                if t >= mem[(32 * path.length) + 128]:
                                    revert with 'NH{q', 50
                                if mem[(32 * t) + (32 * path.length) + 160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if address(s) == address(_15851):
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
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if t + 1 > -2:
                                            revert with 'NH{q', 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    if 0 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    require ext_code.size(sub_51384938Address)
                                    call sub_51384938Address.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), mem[(32 * path.length) + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    # nil
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
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if t + 1 > -2:
                                            revert with 'NH{q', 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    if 0 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    require ext_code.size(sub_51384938Address)
                                    call sub_51384938Address.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), mem[(32 * path.length) + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    # nil
                            else:
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                _15882 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                mem[mem[64] + 52] = address(s)
                                _16052 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _16054 = sha3(mem[_16052 + 32 len mem[_16052]])
                                mem[_15882 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_15882 + 105] = factoryAddress
                                mem[_15882 + 125] = _16054
                                mem[_15882 + 157] = 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c
                                mem[_15882 + 72] = 85
                                require ext_code.size(Mask(64, 96, sha3(0, factoryAddress, _16054, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96)
                                staticcall Mask(64, 96, sha3(0, factoryAddress, _16054, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96.getReserves() with:
                                        gas gas_remaining wei
                                mem[_15882 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _15882 + ceil32(return_data.size) + 189
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                if t >= mem[(32 * path.length) + 128]:
                                    revert with 'NH{q', 50
                                if mem[(32 * t) + (32 * path.length) + 160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if address(s) == address(_15851):
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
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if t + 1 > -2:
                                            revert with 'NH{q', 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    if 0 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    require ext_code.size(sub_51384938Address)
                                    call sub_51384938Address.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), mem[(32 * path.length) + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    # nil
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
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if t + 1 > -2:
                                            revert with 'NH{q', 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    if 0 >= mem[(32 * path.length) + 128]:
                                        revert with 'NH{q', 50
                                    require ext_code.size(sub_51384938Address)
                                    call sub_51384938Address.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), mem[(32 * path.length) + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    # nil
                revert with 'NH{q', 50
        if 0 >= path.length:
            revert with 'NH{q', 50
        require ext_code.size(sub_51384938Address)
        call sub_51384938Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), sub_a626b852
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(64 * path.length) + ceil32(return_data.size) + 450 len arg4.length] = arg4[all]
        mem[(64 * path.length) + ceil32(return_data.size) + arg4.length + 450] = 0
        if arg4.length == 65:
            if mem[(64 * path.length) + ceil32(return_data.size) + 482] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                revert with 0, 'ECDSA: invalid signature 's' value'
            revert with 0, 'ECDSA: invalid signature 'v' value'
        if arg4.length != 64:
            revert with 0, 'ECDSA: invalid signature length'
        if uint255(mem[(64 * path.length) + ceil32(return_data.size) + 482]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        if uint8((bool(mem[(64 * path.length) + ceil32(return_data.size) + 482]) >> 255) + 27) != 27:
            if uint8((bool(mem[(64 * path.length) + ceil32(return_data.size) + 482]) >> 255) + 27) != 28:
                revert with 0, 'ECDSA: invalid signature 'v' value'
        mem[(64 * path.length) + ceil32(return_data.size) + ceil32(arg4.length) + 514] = uint8((bool(mem[(64 * path.length) + ceil32(return_data.size) + 482]) >> 255) + 27)
        mem[(64 * path.length) + ceil32(return_data.size) + ceil32(arg4.length) + 546] = mem[(64 * path.length) + ceil32(return_data.size) + 450]
        mem[(64 * path.length) + ceil32(return_data.size) + ceil32(arg4.length) + 578] = uint255(mem[(64 * path.length) + ceil32(return_data.size) + 482])
        signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0xce7f5ceae1079d4b1e3a2ffa3a2ed6aa3b32e463f009e4cceed8d321808bd413, address(arg1), arg2, Mask(160, 96, arg3))), (bool(mem[(64 * path.length) + ceil32(return_data.size) + 482]) >> 255) + 27 << 248, mem[(64 * path.length) + ceil32(return_data.size) + 450], uint255(mem[(64 * path.length) + ceil32(return_data.size) + 482])) 
    else:
        if path.length < 2:
            revert with 0, 'UniswapV2Library: INVALID_PATH'
        if path.length > test266151307():
            revert with 'NH{q', 65
        mem[(32 * path.length) + 128] = path.length
        mem[64] = (64 * path.length) + 160
        if not path.length:
            if 0 >= path.length:
                revert with 'NH{q', 50
            mem[(32 * path.length) + 160] = sub_a626b852
            if var228003 < 1:
                revert with 'NH{q', 17
            if var232002 < var232001:
                if var234001 < path.length:
                    if var246003 > -2:
                        revert with 'NH{q', 17
                    idx = var248002 + 1
                    s = var248006
                    t = var248011
                    while idx < path.length:
                        _14954 = mem[(32 * idx) + 128]
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
                                _14992 = mem[64]
                                mem[mem[64] + 32] = address(s)
                                mem[mem[64] + 52] = address(_14954)
                                _15048 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _15050 = sha3(mem[_15048 + 32 len mem[_15048]])
                                mem[_14992 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_14992 + 105] = factoryAddress
                                mem[_14992 + 125] = _15050
                                mem[_14992 + 157] = 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c
                                mem[_14992 + 72] = 85
                                require ext_code.size(Mask(64, 96, sha3(0, factoryAddress, _15050, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96)
                                staticcall Mask(64, 96, sha3(0, factoryAddress, _15050, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96.getReserves() with:
                                        gas gas_remaining wei
                                mem[_14992 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14992 + ceil32(return_data.size) + 189
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
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if t + 1 > -2:
                                        revert with 'NH{q', 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                if 0 >= mem[(32 * path.length) + 128]:
                                    revert with 'NH{q', 50
                                require ext_code.size(sub_51384938Address)
                                call sub_51384938Address.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), mem[(32 * path.length) + 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[_14992 + (2 * ceil32(return_data.size)) + 479 len arg4.length] = arg4[all]
                                mem[_14992 + (2 * ceil32(return_data.size)) + arg4.length + 479] = 0
                                if arg4.length == 65:
                                    if mem[_14992 + (2 * ceil32(return_data.size)) + 511] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                                        revert with 0, 'ECDSA: invalid signature 's' value'
                                    revert with 0, 'ECDSA: invalid signature 'v' value'
                                if arg4.length != 64:
                                    revert with 0, 'ECDSA: invalid signature length'
                                if uint255(mem[_14992 + (2 * ceil32(return_data.size)) + 511]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                                    revert with 0, 'ECDSA: invalid signature 's' value'
                                if uint8((bool(mem[_14992 + (2 * ceil32(return_data.size)) + 511]) >> 255) + 27) != 27:
                                    if uint8((bool(mem[_14992 + (2 * ceil32(return_data.size)) + 511]) >> 255) + 27) != 28:
                                        revert with 0, 'ECDSA: invalid signature 'v' value'
                                mem[_14992 + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 543] = uint8((bool(mem[_14992 + (2 * ceil32(return_data.size)) + 511]) >> 255) + 27)
                                mem[_14992 + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 575] = mem[_14992 + (2 * ceil32(return_data.size)) + 479]
                                mem[_14992 + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 607] = uint255(mem[_14992 + (2 * ceil32(return_data.size)) + 511])
                                signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0xce7f5ceae1079d4b1e3a2ffa3a2ed6aa3b32e463f009e4cceed8d321808bd413, address(arg1), arg2, Mask(160, 96, arg3))), (bool(mem[_14992 + (2 * ceil32(return_data.size)) + 511]) >> 255) + 27 << 248, mem[_14992 + (2 * ceil32(return_data.size)) + 479], uint255(mem[_14992 + (2 * ceil32(return_data.size)) + 511])) 
                                if not erecover.result:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not address(signer):
                                    revert with 0, 'ECDSA: invalid signature'
                                if not address(signer):
                                    revert with 0, 'WDCThandler: invalid signature'
                                require ext_code.size(this.address)
                                staticcall this.address.0x8da5cb5b with:
                                        gas gas_remaining wei
                                mem[_14992 + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 511] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if address(signer) != ext_call.return_data[12 len 20]:
                                    mem[_14992 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 511] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14992 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 515] = 32
                                    mem[_14992 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 547] = 30
                                    mem[_14992 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 579] = 'WDCThandler: invalid signature'
                                    revert with memory
                                      from _14992 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 511
                                       len (5 * ceil32(return_data.size)) + 100
                                stor1[Mask(160, 96, arg3)] = 1
                                mem[_14992 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 515] = arg1
                                mem[_14992 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 547] = arg2
                                require ext_code.size(WDCTAddress)
                                call WDCTAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args mem[_14992 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 515 len (5 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_14992 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 511] = arg1
                                mem[_14992 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 543] = arg2
                                emit Deposit(address arg1, uint256 arg2):
                                             mem[_14992 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 511 len (5 * ceil32(return_data.size)) + 64],
                            else:
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                _14993 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                mem[mem[64] + 52] = address(s)
                                _15052 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _15054 = sha3(mem[_15052 + 32 len mem[_15052]])
                                mem[_14993 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_14993 + 105] = factoryAddress
                                mem[_14993 + 125] = _15054
                                mem[_14993 + 157] = 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c
                                mem[_14993 + 72] = 85
                                require ext_code.size(Mask(64, 96, sha3(0, factoryAddress, _15054, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96)
                                staticcall Mask(64, 96, sha3(0, factoryAddress, _15054, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96.getReserves() with:
                                        gas gas_remaining wei
                                mem[_14993 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14993 + ceil32(return_data.size) + 189
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
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if t + 1 > -2:
                                        revert with 'NH{q', 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                if 0 >= mem[(32 * path.length) + 128]:
                                    revert with 'NH{q', 50
                                require ext_code.size(sub_51384938Address)
                                call sub_51384938Address.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), mem[(32 * path.length) + 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[_14993 + (2 * ceil32(return_data.size)) + 479 len arg4.length] = arg4[all]
                                mem[_14993 + (2 * ceil32(return_data.size)) + arg4.length + 479] = 0
                                if arg4.length == 65:
                                    if mem[_14993 + (2 * ceil32(return_data.size)) + 511] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                                        revert with 0, 'ECDSA: invalid signature 's' value'
                                    revert with 0, 'ECDSA: invalid signature 'v' value'
                                if arg4.length != 64:
                                    revert with 0, 'ECDSA: invalid signature length'
                                if uint255(mem[_14993 + (2 * ceil32(return_data.size)) + 511]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                                    revert with 0, 'ECDSA: invalid signature 's' value'
                                if uint8((bool(mem[_14993 + (2 * ceil32(return_data.size)) + 511]) >> 255) + 27) != 27:
                                    if uint8((bool(mem[_14993 + (2 * ceil32(return_data.size)) + 511]) >> 255) + 27) != 28:
                                        revert with 0, 'ECDSA: invalid signature 'v' value'
                                mem[_14993 + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 543] = uint8((bool(mem[_14993 + (2 * ceil32(return_data.size)) + 511]) >> 255) + 27)
                                mem[_14993 + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 575] = mem[_14993 + (2 * ceil32(return_data.size)) + 479]
                                mem[_14993 + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 607] = uint255(mem[_14993 + (2 * ceil32(return_data.size)) + 511])
                                signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0xce7f5ceae1079d4b1e3a2ffa3a2ed6aa3b32e463f009e4cceed8d321808bd413, address(arg1), arg2, Mask(160, 96, arg3))), (bool(mem[_14993 + (2 * ceil32(return_data.size)) + 511]) >> 255) + 27 << 248, mem[_14993 + (2 * ceil32(return_data.size)) + 479], uint255(mem[_14993 + (2 * ceil32(return_data.size)) + 511])) 
                                if not erecover.result:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not address(signer):
                                    revert with 0, 'ECDSA: invalid signature'
                                if not address(signer):
                                    revert with 0, 'WDCThandler: invalid signature'
                                require ext_code.size(this.address)
                                staticcall this.address.0x8da5cb5b with:
                                        gas gas_remaining wei
                                mem[_14993 + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 511] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if address(signer) != ext_call.return_data[12 len 20]:
                                    mem[_14993 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 511] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14993 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 515] = 32
                                    mem[_14993 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 547] = 30
                                    mem[_14993 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 579] = 'WDCThandler: invalid signature'
                                    revert with memory
                                      from _14993 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 511
                                       len (5 * ceil32(return_data.size)) + 100
                                stor1[Mask(160, 96, arg3)] = 1
                                mem[_14993 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 515] = arg1
                                mem[_14993 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 547] = arg2
                                require ext_code.size(WDCTAddress)
                                call WDCTAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args mem[_14993 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 515 len (5 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_14993 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 511] = arg1
                                mem[_14993 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 543] = arg2
                                emit Deposit(address arg1, uint256 arg2):
                                             mem[_14993 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 511 len (5 * ceil32(return_data.size)) + 64],
                        else:
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            if address(s) == mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                            if address(s) < mem[(32 * idx) + 140 len 20]:
                                if not address(s):
                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                _14995 = mem[64]
                                mem[mem[64] + 32] = address(s)
                                mem[mem[64] + 52] = address(_14954)
                                _15056 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _15058 = sha3(mem[_15056 + 32 len mem[_15056]])
                                mem[_14995 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_14995 + 105] = factoryAddress
                                mem[_14995 + 125] = _15058
                                mem[_14995 + 157] = 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c
                                mem[_14995 + 72] = 85
                                require ext_code.size(Mask(64, 96, sha3(0, factoryAddress, _15058, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96)
                                staticcall Mask(64, 96, sha3(0, factoryAddress, _15058, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96.getReserves() with:
                                        gas gas_remaining wei
                                mem[_14995 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14995 + ceil32(return_data.size) + 189
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                if t >= mem[(32 * path.length) + 128]:
                                    revert with 'NH{q', 50
                                if mem[(32 * t) + (32 * path.length) + 160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if address(s) == address(_14954):
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
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if t + 1 > -2:
                                        revert with 'NH{q', 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                if 0 >= mem[(32 * path.length) + 128]:
                                    revert with 'NH{q', 50
                                require ext_code.size(sub_51384938Address)
                                call sub_51384938Address.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), mem[(32 * path.length) + 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[_14995 + (2 * ceil32(return_data.size)) + 479 len arg4.length] = arg4[all]
                                mem[_14995 + (2 * ceil32(return_data.size)) + arg4.length + 479] = 0
                                if arg4.length == 65:
                                    if mem[_14995 + (2 * ceil32(return_data.size)) + 511] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                                        revert with 0, 'ECDSA: invalid signature 's' value'
                                    revert with 0, 'ECDSA: invalid signature 'v' value'
                                if arg4.length != 64:
                                    revert with 0, 'ECDSA: invalid signature length'
                                if uint255(mem[_14995 + (2 * ceil32(return_data.size)) + 511]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                                    revert with 0, 'ECDSA: invalid signature 's' value'
                                if uint8((bool(mem[_14995 + (2 * ceil32(return_data.size)) + 511]) >> 255) + 27) != 27:
                                    if uint8((bool(mem[_14995 + (2 * ceil32(return_data.size)) + 511]) >> 255) + 27) != 28:
                                        revert with 0, 'ECDSA: invalid signature 'v' value'
                                mem[_14995 + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 543] = uint8((bool(mem[_14995 + (2 * ceil32(return_data.size)) + 511]) >> 255) + 27)
                                mem[_14995 + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 575] = mem[_14995 + (2 * ceil32(return_data.size)) + 479]
                                mem[_14995 + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 607] = uint255(mem[_14995 + (2 * ceil32(return_data.size)) + 511])
                                signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0xce7f5ceae1079d4b1e3a2ffa3a2ed6aa3b32e463f009e4cceed8d321808bd413, address(arg1), arg2, Mask(160, 96, arg3))), (bool(mem[_14995 + (2 * ceil32(return_data.size)) + 511]) >> 255) + 27 << 248, mem[_14995 + (2 * ceil32(return_data.size)) + 479], uint255(mem[_14995 + (2 * ceil32(return_data.size)) + 511])) 
                                if not erecover.result:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not address(signer):
                                    revert with 0, 'ECDSA: invalid signature'
                                if not address(signer):
                                    revert with 0, 'WDCThandler: invalid signature'
                                require ext_code.size(this.address)
                                staticcall this.address.0x8da5cb5b with:
                                        gas gas_remaining wei
                                mem[_14995 + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 511] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if address(signer) != ext_call.return_data[12 len 20]:
                                    mem[_14995 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 511] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14995 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 515] = 32
                                    mem[_14995 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 547] = 30
                                    mem[_14995 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 579] = 'WDCThandler: invalid signature'
                                    revert with memory
                                      from _14995 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 511
                                       len (5 * ceil32(return_data.size)) + 100
                                stor1[Mask(160, 96, arg3)] = 1
                                mem[_14995 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 515] = arg1
                                mem[_14995 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 547] = arg2
                                require ext_code.size(WDCTAddress)
                                call WDCTAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args mem[_14995 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 515 len (5 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_14995 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 511] = arg1
                                mem[_14995 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 543] = arg2
                                emit Deposit(address arg1, uint256 arg2):
                                             mem[_14995 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 511 len (5 * ceil32(return_data.size)) + 64],
                            else:
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                _14996 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                mem[mem[64] + 52] = address(s)
                                _15060 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _15062 = sha3(mem[_15060 + 32 len mem[_15060]])
                                mem[_14996 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_14996 + 105] = factoryAddress
                                mem[_14996 + 125] = _15062
                                mem[_14996 + 157] = 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c
                                mem[_14996 + 72] = 85
                                require ext_code.size(Mask(64, 96, sha3(0, factoryAddress, _15062, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96)
                                staticcall Mask(64, 96, sha3(0, factoryAddress, _15062, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96.getReserves() with:
                                        gas gas_remaining wei
                                mem[_14996 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14996 + ceil32(return_data.size) + 189
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                if t >= mem[(32 * path.length) + 128]:
                                    revert with 'NH{q', 50
                                if mem[(32 * t) + (32 * path.length) + 160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if address(s) == address(_14954):
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
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if t + 1 > -2:
                                        revert with 'NH{q', 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                if 0 >= mem[(32 * path.length) + 128]:
                                    revert with 'NH{q', 50
                                require ext_code.size(sub_51384938Address)
                                call sub_51384938Address.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), mem[(32 * path.length) + 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[_14996 + (2 * ceil32(return_data.size)) + 479 len arg4.length] = arg4[all]
                                mem[_14996 + (2 * ceil32(return_data.size)) + arg4.length + 479] = 0
                                if arg4.length == 65:
                                    if mem[_14996 + (2 * ceil32(return_data.size)) + 511] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                                        revert with 0, 'ECDSA: invalid signature 's' value'
                                    revert with 0, 'ECDSA: invalid signature 'v' value'
                                if arg4.length != 64:
                                    revert with 0, 'ECDSA: invalid signature length'
                                if uint255(mem[_14996 + (2 * ceil32(return_data.size)) + 511]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                                    revert with 0, 'ECDSA: invalid signature 's' value'
                                if uint8((bool(mem[_14996 + (2 * ceil32(return_data.size)) + 511]) >> 255) + 27) != 27:
                                    if uint8((bool(mem[_14996 + (2 * ceil32(return_data.size)) + 511]) >> 255) + 27) != 28:
                                        revert with 0, 'ECDSA: invalid signature 'v' value'
                                mem[_14996 + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 543] = uint8((bool(mem[_14996 + (2 * ceil32(return_data.size)) + 511]) >> 255) + 27)
                                mem[_14996 + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 575] = mem[_14996 + (2 * ceil32(return_data.size)) + 479]
                                mem[_14996 + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 607] = uint255(mem[_14996 + (2 * ceil32(return_data.size)) + 511])
                                signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0xce7f5ceae1079d4b1e3a2ffa3a2ed6aa3b32e463f009e4cceed8d321808bd413, address(arg1), arg2, Mask(160, 96, arg3))), (bool(mem[_14996 + (2 * ceil32(return_data.size)) + 511]) >> 255) + 27 << 248, mem[_14996 + (2 * ceil32(return_data.size)) + 479], uint255(mem[_14996 + (2 * ceil32(return_data.size)) + 511])) 
                                if not erecover.result:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not address(signer):
                                    revert with 0, 'ECDSA: invalid signature'
                                if not address(signer):
                                    revert with 0, 'WDCThandler: invalid signature'
                                require ext_code.size(this.address)
                                staticcall this.address.0x8da5cb5b with:
                                        gas gas_remaining wei
                                mem[_14996 + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 511] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if address(signer) != ext_call.return_data[12 len 20]:
                                    mem[_14996 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 511] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14996 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 515] = 32
                                    mem[_14996 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 547] = 30
                                    mem[_14996 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 579] = 'WDCThandler: invalid signature'
                                    revert with memory
                                      from _14996 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 511
                                       len (5 * ceil32(return_data.size)) + 100
                                stor1[Mask(160, 96, arg3)] = 1
                                mem[_14996 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 515] = arg1
                                mem[_14996 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 547] = arg2
                                require ext_code.size(WDCTAddress)
                                call WDCTAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args mem[_14996 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 515 len (5 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_14996 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 511] = arg1
                                mem[_14996 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 543] = arg2
                                emit Deposit(address arg1, uint256 arg2):
                                             mem[_14996 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 511 len (5 * ceil32(return_data.size)) + 64],
                revert with 'NH{q', 50
            if 0 >= path.length:
                revert with 'NH{q', 50
            mem[(64 * path.length) + 164] = msg.sender
            mem[(64 * path.length) + 196] = this.address
            mem[(64 * path.length) + 228] = sub_a626b852
            require ext_code.size(sub_51384938Address)
            call sub_51384938Address.0x23b872dd with:
                 gas gas_remaining wei
                args mem[(64 * path.length) + 164 len (127 * path.length) + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(64 * path.length) + ceil32(return_data.size) + 192] = 0xce7f5ceae1079d4b1e3a2ffa3a2ed6aa3b32e463f009e4cceed8d321808bd413
            mem[(64 * path.length) + ceil32(return_data.size) + 224] = arg1
            mem[(64 * path.length) + ceil32(return_data.size) + 256] = arg2
            mem[(64 * path.length) + ceil32(return_data.size) + 288] = Mask(160, 96, arg3)
            _7094 = sha3(mem[(64 * path.length) + ceil32(return_data.size) + 192 len (127 * path.length) + 128])
            mem[(64 * path.length) + ceil32(return_data.size) + 450 len arg4.length] = arg4[all]
            mem[(64 * path.length) + ceil32(return_data.size) + arg4.length + 450] = 0
            if arg4.length == 65:
                if mem[(64 * path.length) + ceil32(return_data.size) + 482] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                    revert with 0, 'ECDSA: invalid signature 's' value'
                revert with 0, 'ECDSA: invalid signature 'v' value'
            if arg4.length != 64:
                revert with 0, 'ECDSA: invalid signature length'
            if uint255(mem[(64 * path.length) + ceil32(return_data.size) + 482]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                revert with 0, 'ECDSA: invalid signature 's' value'
            if uint8((bool(mem[(64 * path.length) + ceil32(return_data.size) + 482]) >> 255) + 27) != 27:
                if uint8((bool(mem[(64 * path.length) + ceil32(return_data.size) + 482]) >> 255) + 27) != 28:
                    revert with 0, 'ECDSA: invalid signature 'v' value'
            mem[(64 * path.length) + ceil32(return_data.size) + ceil32(arg4.length) + 514] = uint8((bool(mem[(64 * path.length) + ceil32(return_data.size) + 482]) >> 255) + 27)
            mem[(64 * path.length) + ceil32(return_data.size) + ceil32(arg4.length) + 546] = mem[(64 * path.length) + ceil32(return_data.size) + 450]
            mem[(64 * path.length) + ceil32(return_data.size) + ceil32(arg4.length) + 578] = uint255(mem[(64 * path.length) + ceil32(return_data.size) + 482])
            signer = erecover(sha3(0, DOMAIN_SEPARATOR, _7094), (bool(mem[(64 * path.length) + ceil32(return_data.size) + 482]) >> 255) + 27 << 248, mem[(64 * path.length) + ceil32(return_data.size) + 450], uint255(mem[(64 * path.length) + ceil32(return_data.size) + 482])) 
        else:
            mem[(32 * path.length) + 160 len 32 * path.length] = call.data[calldata.size len 32 * path.length]
            if 0 >= path.length:
                revert with 'NH{q', 50
            mem[(32 * path.length) + 160] = sub_a626b852
            if var229003 < 1:
                revert with 'NH{q', 17
            if var233002 < var233001:
                if var235001 < path.length:
                    if var247003 > -2:
                        revert with 'NH{q', 17
                    idx = var249002 + 1
                    s = var249006
                    t = var249011
                    while idx < path.length:
                        _14955 = mem[(32 * idx) + 128]
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
                                _14998 = mem[64]
                                mem[mem[64] + 32] = address(s)
                                mem[mem[64] + 52] = address(_14955)
                                _15064 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _15066 = sha3(mem[_15064 + 32 len mem[_15064]])
                                mem[_14998 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_14998 + 105] = factoryAddress
                                mem[_14998 + 125] = _15066
                                mem[_14998 + 157] = 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c
                                mem[_14998 + 72] = 85
                                require ext_code.size(Mask(64, 96, sha3(0, factoryAddress, _15066, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96)
                                staticcall Mask(64, 96, sha3(0, factoryAddress, _15066, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96.getReserves() with:
                                        gas gas_remaining wei
                                mem[_14998 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14998 + ceil32(return_data.size) + 189
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
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if t + 1 > -2:
                                        revert with 'NH{q', 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                if 0 >= mem[(32 * path.length) + 128]:
                                    revert with 'NH{q', 50
                                require ext_code.size(sub_51384938Address)
                                call sub_51384938Address.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), mem[(32 * path.length) + 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[_14998 + (2 * ceil32(return_data.size)) + 479 len arg4.length] = arg4[all]
                                mem[_14998 + (2 * ceil32(return_data.size)) + arg4.length + 479] = 0
                                if arg4.length == 65:
                                    if mem[_14998 + (2 * ceil32(return_data.size)) + 511] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                                        revert with 0, 'ECDSA: invalid signature 's' value'
                                    revert with 0, 'ECDSA: invalid signature 'v' value'
                                if arg4.length != 64:
                                    revert with 0, 'ECDSA: invalid signature length'
                                if uint255(mem[_14998 + (2 * ceil32(return_data.size)) + 511]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                                    revert with 0, 'ECDSA: invalid signature 's' value'
                                if uint8((bool(mem[_14998 + (2 * ceil32(return_data.size)) + 511]) >> 255) + 27) != 27:
                                    if uint8((bool(mem[_14998 + (2 * ceil32(return_data.size)) + 511]) >> 255) + 27) != 28:
                                        revert with 0, 'ECDSA: invalid signature 'v' value'
                                mem[_14998 + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 543] = uint8((bool(mem[_14998 + (2 * ceil32(return_data.size)) + 511]) >> 255) + 27)
                                mem[_14998 + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 575] = mem[_14998 + (2 * ceil32(return_data.size)) + 479]
                                mem[_14998 + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 607] = uint255(mem[_14998 + (2 * ceil32(return_data.size)) + 511])
                                signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0xce7f5ceae1079d4b1e3a2ffa3a2ed6aa3b32e463f009e4cceed8d321808bd413, address(arg1), arg2, Mask(160, 96, arg3))), (bool(mem[_14998 + (2 * ceil32(return_data.size)) + 511]) >> 255) + 27 << 248, mem[_14998 + (2 * ceil32(return_data.size)) + 479], uint255(mem[_14998 + (2 * ceil32(return_data.size)) + 511])) 
                                if not erecover.result:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not address(signer):
                                    revert with 0, 'ECDSA: invalid signature'
                                if not address(signer):
                                    revert with 0, 'WDCThandler: invalid signature'
                                require ext_code.size(this.address)
                                staticcall this.address.0x8da5cb5b with:
                                        gas gas_remaining wei
                                mem[_14998 + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 511] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if address(signer) != ext_call.return_data[12 len 20]:
                                    mem[_14998 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 511] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14998 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 515] = 32
                                    mem[_14998 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 547] = 30
                                    mem[_14998 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 579] = 'WDCThandler: invalid signature'
                                    revert with memory
                                      from _14998 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 511
                                       len (5 * ceil32(return_data.size)) + 100
                                stor1[Mask(160, 96, arg3)] = 1
                                mem[_14998 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 515] = arg1
                                mem[_14998 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 547] = arg2
                                require ext_code.size(WDCTAddress)
                                call WDCTAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args mem[_14998 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 515 len (5 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_14998 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 511] = arg1
                                mem[_14998 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 543] = arg2
                                emit Deposit(address arg1, uint256 arg2):
                                             mem[_14998 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 511 len (5 * ceil32(return_data.size)) + 64],
                            else:
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                _14999 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                mem[mem[64] + 52] = address(s)
                                _15068 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _15070 = sha3(mem[_15068 + 32 len mem[_15068]])
                                mem[_14999 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_14999 + 105] = factoryAddress
                                mem[_14999 + 125] = _15070
                                mem[_14999 + 157] = 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c
                                mem[_14999 + 72] = 85
                                require ext_code.size(Mask(64, 96, sha3(0, factoryAddress, _15070, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96)
                                staticcall Mask(64, 96, sha3(0, factoryAddress, _15070, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96.getReserves() with:
                                        gas gas_remaining wei
                                mem[_14999 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14999 + ceil32(return_data.size) + 189
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
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if t + 1 > -2:
                                        revert with 'NH{q', 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                if 0 >= mem[(32 * path.length) + 128]:
                                    revert with 'NH{q', 50
                                require ext_code.size(sub_51384938Address)
                                call sub_51384938Address.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), mem[(32 * path.length) + 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[_14999 + (2 * ceil32(return_data.size)) + 479 len arg4.length] = arg4[all]
                                mem[_14999 + (2 * ceil32(return_data.size)) + arg4.length + 479] = 0
                                if arg4.length == 65:
                                    if mem[_14999 + (2 * ceil32(return_data.size)) + 511] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                                        revert with 0, 'ECDSA: invalid signature 's' value'
                                    revert with 0, 'ECDSA: invalid signature 'v' value'
                                if arg4.length != 64:
                                    revert with 0, 'ECDSA: invalid signature length'
                                if uint255(mem[_14999 + (2 * ceil32(return_data.size)) + 511]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                                    revert with 0, 'ECDSA: invalid signature 's' value'
                                if uint8((bool(mem[_14999 + (2 * ceil32(return_data.size)) + 511]) >> 255) + 27) != 27:
                                    if uint8((bool(mem[_14999 + (2 * ceil32(return_data.size)) + 511]) >> 255) + 27) != 28:
                                        revert with 0, 'ECDSA: invalid signature 'v' value'
                                mem[_14999 + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 543] = uint8((bool(mem[_14999 + (2 * ceil32(return_data.size)) + 511]) >> 255) + 27)
                                mem[_14999 + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 575] = mem[_14999 + (2 * ceil32(return_data.size)) + 479]
                                mem[_14999 + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 607] = uint255(mem[_14999 + (2 * ceil32(return_data.size)) + 511])
                                signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0xce7f5ceae1079d4b1e3a2ffa3a2ed6aa3b32e463f009e4cceed8d321808bd413, address(arg1), arg2, Mask(160, 96, arg3))), (bool(mem[_14999 + (2 * ceil32(return_data.size)) + 511]) >> 255) + 27 << 248, mem[_14999 + (2 * ceil32(return_data.size)) + 479], uint255(mem[_14999 + (2 * ceil32(return_data.size)) + 511])) 
                                if not erecover.result:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not address(signer):
                                    revert with 0, 'ECDSA: invalid signature'
                                if not address(signer):
                                    revert with 0, 'WDCThandler: invalid signature'
                                require ext_code.size(this.address)
                                staticcall this.address.0x8da5cb5b with:
                                        gas gas_remaining wei
                                mem[_14999 + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 511] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if address(signer) != ext_call.return_data[12 len 20]:
                                    mem[_14999 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 511] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14999 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 515] = 32
                                    mem[_14999 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 547] = 30
                                    mem[_14999 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 579] = 'WDCThandler: invalid signature'
                                    revert with memory
                                      from _14999 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 511
                                       len (5 * ceil32(return_data.size)) + 100
                                stor1[Mask(160, 96, arg3)] = 1
                                mem[_14999 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 515] = arg1
                                mem[_14999 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 547] = arg2
                                require ext_code.size(WDCTAddress)
                                call WDCTAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args mem[_14999 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 515 len (5 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_14999 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 511] = arg1
                                mem[_14999 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 543] = arg2
                                emit Deposit(address arg1, uint256 arg2):
                                             mem[_14999 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 511 len (5 * ceil32(return_data.size)) + 64],
                        else:
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            if address(s) == mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                            if address(s) < mem[(32 * idx) + 140 len 20]:
                                if not address(s):
                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                _15001 = mem[64]
                                mem[mem[64] + 32] = address(s)
                                mem[mem[64] + 52] = address(_14955)
                                _15072 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _15074 = sha3(mem[_15072 + 32 len mem[_15072]])
                                mem[_15001 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_15001 + 105] = factoryAddress
                                mem[_15001 + 125] = _15074
                                mem[_15001 + 157] = 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c
                                mem[_15001 + 72] = 85
                                require ext_code.size(Mask(64, 96, sha3(0, factoryAddress, _15074, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96)
                                staticcall Mask(64, 96, sha3(0, factoryAddress, _15074, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96.getReserves() with:
                                        gas gas_remaining wei
                                mem[_15001 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _15001 + ceil32(return_data.size) + 189
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                if t >= mem[(32 * path.length) + 128]:
                                    revert with 'NH{q', 50
                                if mem[(32 * t) + (32 * path.length) + 160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if address(s) == address(_14955):
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
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if t + 1 > -2:
                                        revert with 'NH{q', 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                if 0 >= mem[(32 * path.length) + 128]:
                                    revert with 'NH{q', 50
                                require ext_code.size(sub_51384938Address)
                                call sub_51384938Address.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), mem[(32 * path.length) + 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[_15001 + (2 * ceil32(return_data.size)) + 479 len arg4.length] = arg4[all]
                                mem[_15001 + (2 * ceil32(return_data.size)) + arg4.length + 479] = 0
                                if arg4.length == 65:
                                    if mem[_15001 + (2 * ceil32(return_data.size)) + 511] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                                        revert with 0, 'ECDSA: invalid signature 's' value'
                                    revert with 0, 'ECDSA: invalid signature 'v' value'
                                if arg4.length != 64:
                                    revert with 0, 'ECDSA: invalid signature length'
                                if uint255(mem[_15001 + (2 * ceil32(return_data.size)) + 511]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                                    revert with 0, 'ECDSA: invalid signature 's' value'
                                if uint8((bool(mem[_15001 + (2 * ceil32(return_data.size)) + 511]) >> 255) + 27) != 27:
                                    if uint8((bool(mem[_15001 + (2 * ceil32(return_data.size)) + 511]) >> 255) + 27) != 28:
                                        revert with 0, 'ECDSA: invalid signature 'v' value'
                                mem[_15001 + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 543] = uint8((bool(mem[_15001 + (2 * ceil32(return_data.size)) + 511]) >> 255) + 27)
                                mem[_15001 + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 575] = mem[_15001 + (2 * ceil32(return_data.size)) + 479]
                                mem[_15001 + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 607] = uint255(mem[_15001 + (2 * ceil32(return_data.size)) + 511])
                                signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0xce7f5ceae1079d4b1e3a2ffa3a2ed6aa3b32e463f009e4cceed8d321808bd413, address(arg1), arg2, Mask(160, 96, arg3))), (bool(mem[_15001 + (2 * ceil32(return_data.size)) + 511]) >> 255) + 27 << 248, mem[_15001 + (2 * ceil32(return_data.size)) + 479], uint255(mem[_15001 + (2 * ceil32(return_data.size)) + 511])) 
                                if not erecover.result:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not address(signer):
                                    revert with 0, 'ECDSA: invalid signature'
                                if not address(signer):
                                    revert with 0, 'WDCThandler: invalid signature'
                                require ext_code.size(this.address)
                                staticcall this.address.0x8da5cb5b with:
                                        gas gas_remaining wei
                                mem[_15001 + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 511] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if address(signer) != ext_call.return_data[12 len 20]:
                                    mem[_15001 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 511] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_15001 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 515] = 32
                                    mem[_15001 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 547] = 30
                                    mem[_15001 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 579] = 'WDCThandler: invalid signature'
                                    revert with memory
                                      from _15001 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 511
                                       len (5 * ceil32(return_data.size)) + 100
                                stor1[Mask(160, 96, arg3)] = 1
                                mem[_15001 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 515] = arg1
                                mem[_15001 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 547] = arg2
                                require ext_code.size(WDCTAddress)
                                call WDCTAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args mem[_15001 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 515 len (5 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_15001 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 511] = arg1
                                mem[_15001 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 543] = arg2
                                emit Deposit(address arg1, uint256 arg2):
                                             mem[_15001 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 511 len (5 * ceil32(return_data.size)) + 64],
                            else:
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                _15002 = mem[64]
                                mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                mem[mem[64] + 52] = address(s)
                                _15076 = mem[64]
                                mem[mem[64]] = 40
                                mem[64] = mem[64] + 72
                                _15078 = sha3(mem[_15076 + 32 len mem[_15076]])
                                mem[_15002 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                mem[_15002 + 105] = factoryAddress
                                mem[_15002 + 125] = _15078
                                mem[_15002 + 157] = 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c
                                mem[_15002 + 72] = 85
                                require ext_code.size(Mask(64, 96, sha3(0, factoryAddress, _15078, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96)
                                staticcall Mask(64, 96, sha3(0, factoryAddress, _15078, 0xdbe8de032cd5a6eaf8be7cec100683c0cc1232085885978265102af9a7c6400c)) >> 96.getReserves() with:
                                        gas gas_remaining wei
                                mem[_15002 + 189 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _15002 + ceil32(return_data.size) + 189
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                if t >= mem[(32 * path.length) + 128]:
                                    revert with 'NH{q', 50
                                if mem[(32 * t) + (32 * path.length) + 160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if address(s) == address(_14955):
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
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if t + 1 > -2:
                                        revert with 'NH{q', 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                if 0 >= mem[(32 * path.length) + 128]:
                                    revert with 'NH{q', 50
                                require ext_code.size(sub_51384938Address)
                                call sub_51384938Address.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), mem[(32 * path.length) + 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[_15002 + (2 * ceil32(return_data.size)) + 479 len arg4.length] = arg4[all]
                                mem[_15002 + (2 * ceil32(return_data.size)) + arg4.length + 479] = 0
                                if arg4.length == 65:
                                    if mem[_15002 + (2 * ceil32(return_data.size)) + 511] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                                        revert with 0, 'ECDSA: invalid signature 's' value'
                                    revert with 0, 'ECDSA: invalid signature 'v' value'
                                if arg4.length != 64:
                                    revert with 0, 'ECDSA: invalid signature length'
                                if uint255(mem[_15002 + (2 * ceil32(return_data.size)) + 511]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                                    revert with 0, 'ECDSA: invalid signature 's' value'
                                if uint8((bool(mem[_15002 + (2 * ceil32(return_data.size)) + 511]) >> 255) + 27) != 27:
                                    if uint8((bool(mem[_15002 + (2 * ceil32(return_data.size)) + 511]) >> 255) + 27) != 28:
                                        revert with 0, 'ECDSA: invalid signature 'v' value'
                                mem[_15002 + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 543] = uint8((bool(mem[_15002 + (2 * ceil32(return_data.size)) + 511]) >> 255) + 27)
                                mem[_15002 + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 575] = mem[_15002 + (2 * ceil32(return_data.size)) + 479]
                                mem[_15002 + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 607] = uint255(mem[_15002 + (2 * ceil32(return_data.size)) + 511])
                                signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0xce7f5ceae1079d4b1e3a2ffa3a2ed6aa3b32e463f009e4cceed8d321808bd413, address(arg1), arg2, Mask(160, 96, arg3))), (bool(mem[_15002 + (2 * ceil32(return_data.size)) + 511]) >> 255) + 27 << 248, mem[_15002 + (2 * ceil32(return_data.size)) + 479], uint255(mem[_15002 + (2 * ceil32(return_data.size)) + 511])) 
                                if not erecover.result:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not address(signer):
                                    revert with 0, 'ECDSA: invalid signature'
                                if not address(signer):
                                    revert with 0, 'WDCThandler: invalid signature'
                                require ext_code.size(this.address)
                                staticcall this.address.0x8da5cb5b with:
                                        gas gas_remaining wei
                                mem[_15002 + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 511] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if address(signer) != ext_call.return_data[12 len 20]:
                                    mem[_15002 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 511] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_15002 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 515] = 32
                                    mem[_15002 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 547] = 30
                                    mem[_15002 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 579] = 'WDCThandler: invalid signature'
                                    revert with memory
                                      from _15002 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 511
                                       len (5 * ceil32(return_data.size)) + 100
                                stor1[Mask(160, 96, arg3)] = 1
                                mem[_15002 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 515] = arg1
                                mem[_15002 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 547] = arg2
                                require ext_code.size(WDCTAddress)
                                call WDCTAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args mem[_15002 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 515 len (5 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_15002 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 511] = arg1
                                mem[_15002 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 543] = arg2
                                emit Deposit(address arg1, uint256 arg2):
                                             mem[_15002 + (4 * ceil32(return_data.size)) + ceil32(arg4.length) + 511 len (5 * ceil32(return_data.size)) + 64],
                revert with 'NH{q', 50
            if 0 >= path.length:
                revert with 'NH{q', 50
            mem[(64 * path.length) + 164] = msg.sender
            mem[(64 * path.length) + 196] = this.address
            mem[(64 * path.length) + 228] = sub_a626b852
            require ext_code.size(sub_51384938Address)
            call sub_51384938Address.0x23b872dd with:
                 gas gas_remaining wei
                args mem[(64 * path.length) + 164 len (127 * path.length) + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(64 * path.length) + ceil32(return_data.size) + 192] = 0xce7f5ceae1079d4b1e3a2ffa3a2ed6aa3b32e463f009e4cceed8d321808bd413
            mem[(64 * path.length) + ceil32(return_data.size) + 224] = arg1
            mem[(64 * path.length) + ceil32(return_data.size) + 256] = arg2
            mem[(64 * path.length) + ceil32(return_data.size) + 288] = Mask(160, 96, arg3)
            _7098 = sha3(mem[(64 * path.length) + ceil32(return_data.size) + 192 len (127 * path.length) + 128])
            mem[(64 * path.length) + ceil32(return_data.size) + 450 len arg4.length] = arg4[all]
            mem[(64 * path.length) + ceil32(return_data.size) + arg4.length + 450] = 0
            if arg4.length == 65:
                if mem[(64 * path.length) + ceil32(return_data.size) + 482] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                    revert with 0, 'ECDSA: invalid signature 's' value'
                revert with 0, 'ECDSA: invalid signature 'v' value'
            if arg4.length != 64:
                revert with 0, 'ECDSA: invalid signature length'
            if uint255(mem[(64 * path.length) + ceil32(return_data.size) + 482]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                revert with 0, 'ECDSA: invalid signature 's' value'
            if uint8((bool(mem[(64 * path.length) + ceil32(return_data.size) + 482]) >> 255) + 27) != 27:
                if uint8((bool(mem[(64 * path.length) + ceil32(return_data.size) + 482]) >> 255) + 27) != 28:
                    revert with 0, 'ECDSA: invalid signature 'v' value'
            mem[(64 * path.length) + ceil32(return_data.size) + ceil32(arg4.length) + 514] = uint8((bool(mem[(64 * path.length) + ceil32(return_data.size) + 482]) >> 255) + 27)
            mem[(64 * path.length) + ceil32(return_data.size) + ceil32(arg4.length) + 546] = mem[(64 * path.length) + ceil32(return_data.size) + 450]
            mem[(64 * path.length) + ceil32(return_data.size) + ceil32(arg4.length) + 578] = uint255(mem[(64 * path.length) + ceil32(return_data.size) + 482])
            signer = erecover(sha3(0, DOMAIN_SEPARATOR, _7098), (bool(mem[(64 * path.length) + ceil32(return_data.size) + 482]) >> 255) + 27 << 248, mem[(64 * path.length) + ceil32(return_data.size) + 450], uint255(mem[(64 * path.length) + ceil32(return_data.size) + 482])) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECDSA: invalid signature'
    if not address(signer):
        revert with 0, 'WDCThandler: invalid signature'
    require ext_code.size(this.address)
    staticcall this.address.0x8da5cb5b with:
            gas gas_remaining wei
    mem[(64 * path.length) + ceil32(return_data.size) + ceil32(arg4.length) + 482] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(signer) != ext_call.return_data[12 len 20]:
        mem[(64 * path.length) + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * path.length) + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 486] = 32
        mem[(64 * path.length) + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 518] = 30
        mem[(64 * path.length) + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 550] = 'WDCThandler: invalid signature'
        revert with memory
          from (64 * path.length) + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 482
           len ceil32(return_data.size) + 100
    stor1[Mask(160, 96, arg3)] = 1
    mem[(64 * path.length) + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 486] = arg1
    mem[(64 * path.length) + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 518] = arg2
    require ext_code.size(WDCTAddress)
    call WDCTAddress.0x40c10f19 with:
         gas gas_remaining wei
        args mem[(64 * path.length) + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 486 len ceil32(return_data.size) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(64 * path.length) + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 482] = arg1
    mem[(64 * path.length) + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 514] = arg2
    emit Deposit(address arg1, uint256 arg2):
                 mem[(64 * path.length) + (2 * ceil32(return_data.size)) + ceil32(arg4.length) + 482 len ceil32(return_data.size) + 64],
}



}
