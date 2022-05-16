contract main {




// =====================  Runtime code  =====================


const sub_1cc09fd1(?) = 0x911ae448b07e93d80942afabebe60ad1e4cdb927

const ADMIN_ADDRESS = 0x911ae448b07e93d80942afabebe60ad1e4cdb927


uint256 stor0;
address owner;
address USDTAddress;
address sub_692ff94bAddress;
uint256 sub_3aebf8b8;
uint256 salePrice;
uint256 sub_ea91eb61;
uint256 startBlock;
mapping of uint256 sub_6d4c6423;

function sub_3aebf8b8(?) payable {
    return sub_3aebf8b8
}

function startBlock() payable {
    return startBlock
}

function sub_692ff94b(?) payable {
    return sub_692ff94bAddress
}

function sub_6d4c6423(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_6d4c6423[arg1]
}

function owner() payable {
    return owner
}

function USDT() payable {
    return USDTAddress
}

function sub_ea91eb61(?) payable {
    return sub_ea91eb61
}

function salePrice() payable {
    return salePrice
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

function sub_edfd5ced(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 > 0
    salePrice = arg1
    emit 0xc6cbcf8c: salePrice
}

function sub_0c19bea4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 > 0
    sub_3aebf8b8 = arg1
    emit 0xfa5875b1: salePrice
}

function setStartBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 > 0
    startBlock = arg1
    emit SetStartBlock(arg1);
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

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_ebdbe303(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_692ff94bAddress)
    staticcall sub_692ff94bAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(sub_692ff94bAddress)
        call sub_692ff94bAddress.0x42842e0e with:
             gas gas_remaining wei
            args address(this.address), 0x911ae448b07e93d80942afabebe60ad1e4cdb927, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0x4183fb2f: ext_call.return_data[0]
}

function sub_d6aeb421(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_692ff94bAddress)
    staticcall sub_692ff94bAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(sub_692ff94bAddress)
        staticcall sub_692ff94bAddress.0x2f745c59 with:
                gas gas_remaining wei
               args address(this.address), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(sub_692ff94bAddress)
        call sub_692ff94bAddress.0x42842e0e with:
             gas gas_remaining wei
            args address(this.address), 0x911ae448b07e93d80942afabebe60ad1e4cdb927, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0x4183fb2f: ext_call.return_data[0]
}

function sub_453f4635(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(sub_692ff94bAddress)
    staticcall sub_692ff94bAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        idx = 0
        s = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0
            require ext_code.size(sub_692ff94bAddress)
            staticcall sub_692ff94bAddress.0x2f745c59 with:
                    gas gas_remaining wei
                   args address(this.address), 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _21 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _22 = mem[_21]
            require mem[_21] == mem[_21]
            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0x911ae448b07e93d80942afabebe60ad1e4cdb927
            mem[mem[64] + 68] = _22
            require ext_code.size(sub_692ff94bAddress)
            call sub_692ff94bAddress.0x42842e0e with:
                 gas gas_remaining wei
                args address(this.address), 0x911ae448b07e93d80942afabebe60ad1e4cdb927, _22
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _22
            continue 
    emit 0x4183fb2f: ext_call.return_data[0]
}

function sub_65500e4f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if block.number < startBlock:
        revert with 0, 'E1'
    if arg1 <= 0:
        revert with 0, 'E2'
    if arg1 > sub_3aebf8b8:
        revert with 0, 'E3'
    if sub_6d4c6423[address(msg.sender)] >= sub_3aebf8b8:
        revert with 0, 'E3'
    mem[100] = this.address
    require ext_code.size(sub_692ff94bAddress)
    staticcall sub_692ff94bAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'E4'
    mem[0] = msg.sender
    mem[32] = 8
    if sub_6d4c6423[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    if sub_6d4c6423[address(msg.sender)] + arg1 <= sub_3aebf8b8:
        if arg1 <= ext_call.return_data[0]:
            if arg1 and salePrice > -1 / arg1:
                revert with 'NH{q', 17
            if arg1 * salePrice <= 0:
                revert with 0, 'E5'
            mem[ceil32(return_data.size) + 100] = msg.sender
            require ext_code.size(USDTAddress)
            staticcall USDTAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if arg1 * salePrice > ext_call.return_data[0]:
                revert with 0, 'E6'
            if ext_call.return_data[0] > 0:
                idx = 0
                while idx < arg1:
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0
                    require ext_code.size(sub_692ff94bAddress)
                    staticcall sub_692ff94bAddress.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(this.address), 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _428 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_428] == mem[_428]
                    sub_ea91eb61 = mem[_428]
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = sub_ea91eb61
                    require ext_code.size(sub_692ff94bAddress)
                    call sub_692ff94bAddress.0x42842e0e with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, sub_ea91eb61
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if sub_6d4c6423[address(msg.sender)] > -arg1 - 1:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 8
                sub_6d4c6423[address(msg.sender)] += arg1
                _420 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = 0x911ae448b07e93d80942afabebe60ad1e4cdb927
                mem[mem[64] + 100] = arg1 * salePrice
                _440 = mem[64]
                mem[mem[64]] = 100
                mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                mem[64] = mem[64] + 196
                mem[_420 + 132] = 32
                mem[_420 + 164] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(USDTAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _464 = mem[_440]
                mem[_420 + 196 len ceil32(mem[_440])] = mem[_440 + 32 len ceil32(mem[_440])]
                if ceil32(_464) > _464:
                    mem[_420 + _464 + 196] = 0
                call USDTAddress with:
                     gas gas_remaining wei
                    args mem[_420 + 200 len _464 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_420 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_420 + 228] == bool(mem[_420 + 228])
                        if not mem[_420 + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit 0x931a293b: msg.sender, arg1, arg1 * salePrice
        else:
            if ext_call.return_data[0] and salePrice > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] * salePrice <= 0:
                revert with 0, 'E5'
            mem[ceil32(return_data.size) + 100] = msg.sender
            require ext_code.size(USDTAddress)
            staticcall USDTAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] * salePrice > ext_call.return_data[0]:
                revert with 0, 'E6'
            if ext_call.return_data[0] > 0:
                idx = 0
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0
                    require ext_code.size(sub_692ff94bAddress)
                    staticcall sub_692ff94bAddress.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(this.address), 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _429 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_429] == mem[_429]
                    sub_ea91eb61 = mem[_429]
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = sub_ea91eb61
                    require ext_code.size(sub_692ff94bAddress)
                    call sub_692ff94bAddress.0x42842e0e with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, sub_ea91eb61
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if sub_6d4c6423[address(msg.sender)] > -ext_call.return_data[0] - 1:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 8
                sub_6d4c6423[address(msg.sender)] += ext_call.return_data[0]
                _422 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = 0x911ae448b07e93d80942afabebe60ad1e4cdb927
                mem[mem[64] + 100] = ext_call.return_data[0] * salePrice
                _442 = mem[64]
                mem[mem[64]] = 100
                mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                mem[64] = mem[64] + 196
                mem[_422 + 132] = 32
                mem[_422 + 164] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(USDTAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _465 = mem[_442]
                mem[_422 + 196 len ceil32(mem[_442])] = mem[_442 + 32 len ceil32(mem[_442])]
                if ceil32(_465) > _465:
                    mem[_422 + _465 + 196] = 0
                call USDTAddress with:
                     gas gas_remaining wei
                    args mem[_422 + 200 len _465 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_422 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_422 + 228] == bool(mem[_422 + 228])
                        if not mem[_422 + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit 0x931a293b: msg.sender, ext_call.return_data[0], ext_call.return_data[0] * salePrice
    else:
        mem[0] = msg.sender
        mem[32] = 8
        if sub_3aebf8b8 < sub_6d4c6423[address(msg.sender)]:
            revert with 'NH{q', 17
        if sub_3aebf8b8 - sub_6d4c6423[address(msg.sender)] <= ext_call.return_data[0]:
            if sub_3aebf8b8 - sub_6d4c6423[address(msg.sender)] and salePrice > -1 / sub_3aebf8b8 - sub_6d4c6423[address(msg.sender)]:
                revert with 'NH{q', 17
            if (sub_3aebf8b8 * salePrice) - (sub_6d4c6423[address(msg.sender)] * salePrice) <= 0:
                revert with 0, 'E5'
            mem[ceil32(return_data.size) + 100] = msg.sender
            require ext_code.size(USDTAddress)
            staticcall USDTAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if (sub_3aebf8b8 * salePrice) - (sub_6d4c6423[address(msg.sender)] * salePrice) > ext_call.return_data[0]:
                revert with 0, 'E6'
            if ext_call.return_data[0] > 0:
                idx = 0
                while idx < sub_3aebf8b8 - sub_6d4c6423[address(msg.sender)]:
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0
                    require ext_code.size(sub_692ff94bAddress)
                    staticcall sub_692ff94bAddress.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(this.address), 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _430 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_430] == mem[_430]
                    sub_ea91eb61 = mem[_430]
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = sub_ea91eb61
                    require ext_code.size(sub_692ff94bAddress)
                    call sub_692ff94bAddress.0x42842e0e with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, sub_ea91eb61
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if sub_6d4c6423[address(msg.sender)] > -sub_3aebf8b8 + sub_6d4c6423[address(msg.sender)] - 1:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 8
                sub_6d4c6423[address(msg.sender)] = sub_3aebf8b8
                _424 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = 0x911ae448b07e93d80942afabebe60ad1e4cdb927
                mem[mem[64] + 100] = (sub_3aebf8b8 * salePrice) - (sub_6d4c6423[address(msg.sender)] * salePrice)
                _444 = mem[64]
                mem[mem[64]] = 100
                mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                mem[64] = mem[64] + 196
                mem[_424 + 132] = 32
                mem[_424 + 164] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(USDTAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _466 = mem[_444]
                mem[_424 + 196 len ceil32(mem[_444])] = mem[_444 + 32 len ceil32(mem[_444])]
                if ceil32(_466) > _466:
                    mem[_424 + _466 + 196] = 0
                call USDTAddress with:
                     gas gas_remaining wei
                    args mem[_424 + 200 len _466 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_424 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_424 + 228] == bool(mem[_424 + 228])
                        if not mem[_424 + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit 0x931a293b: msg.sender, sub_3aebf8b8 - sub_6d4c6423[address(msg.sender)], (sub_3aebf8b8 * salePrice) - (sub_6d4c6423[address(msg.sender)] * salePrice)
        else:
            if ext_call.return_data[0] and salePrice > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] * salePrice <= 0:
                revert with 0, 'E5'
            mem[ceil32(return_data.size) + 100] = msg.sender
            require ext_code.size(USDTAddress)
            staticcall USDTAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] * salePrice > ext_call.return_data[0]:
                revert with 0, 'E6'
            if ext_call.return_data[0] > 0:
                idx = 0
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0
                    require ext_code.size(sub_692ff94bAddress)
                    staticcall sub_692ff94bAddress.0x2f745c59 with:
                            gas gas_remaining wei
                           args address(this.address), 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _431 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_431] == mem[_431]
                    sub_ea91eb61 = mem[_431]
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = sub_ea91eb61
                    require ext_code.size(sub_692ff94bAddress)
                    call sub_692ff94bAddress.0x42842e0e with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, sub_ea91eb61
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if sub_6d4c6423[address(msg.sender)] > -ext_call.return_data[0] - 1:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 8
                sub_6d4c6423[address(msg.sender)] += ext_call.return_data[0]
                _426 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = 0x911ae448b07e93d80942afabebe60ad1e4cdb927
                mem[mem[64] + 100] = ext_call.return_data[0] * salePrice
                _446 = mem[64]
                mem[mem[64]] = 100
                mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                mem[64] = mem[64] + 196
                mem[_426 + 132] = 32
                mem[_426 + 164] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(USDTAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _467 = mem[_446]
                mem[_426 + 196 len ceil32(mem[_446])] = mem[_446 + 32 len ceil32(mem[_446])]
                if ceil32(_467) > _467:
                    mem[_426 + _467 + 196] = 0
                call USDTAddress with:
                     gas gas_remaining wei
                    args mem[_426 + 200 len _467 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96] > 0:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_426 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_426 + 228] == bool(mem[_426 + 228])
                        if not mem[_426 + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit 0x931a293b: msg.sender, ext_call.return_data[0], ext_call.return_data[0] * salePrice
    stor0 = 1
}



}
