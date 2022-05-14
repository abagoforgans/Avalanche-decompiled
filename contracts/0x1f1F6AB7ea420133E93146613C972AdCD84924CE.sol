contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
mapping of uint8 stor101;

function sub_0f7547e9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor101[address(arg1)])
}

function owner() payable {
    return owner
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

function sub_602dbc58(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        stor101[address(arg1)] = 0
    else:
        stor101[address(arg1)] = 1
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

function sub_ce172b66(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not stor101[address(msg.sender)]:
        revert with 0, 'PGOCA:not PG'
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg1 and 997 > -1 / arg1:
        revert with 'NH{q', 17
    if 997 * arg1 and arg3 > -1 / 997 * arg1:
        revert with 'NH{q', 17
    if arg2 and 1000 > -1 / arg2:
        revert with 'NH{q', 17
    if 1000 * arg2 > (-997 * arg1) - 1:
        revert with 'NH{q', 17
    if not (1000 * arg2) + (997 * arg1):
        revert with 'NH{q', 18
    return (997 * arg1 * arg3 / (1000 * arg2) + (997 * arg1))
}

function initialize() payable {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
        else:
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
            else:
                Mask(248, 0, stor0.field_8) = 1
                uint8(stor0.field_0) = 1
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                else:
                    Mask(248, 0, stor0.field_8) = 1
                    uint8(stor0.field_0) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                    else:
                        Mask(248, 0, stor0.field_8) = 1
                        uint8(stor0.field_0) = 1
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        Mask(248, 0, stor0.field_8) = 0
                        Mask(248, 0, stor0.field_8) = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor101[address(msg.sender)] = 1
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 0
}

function sub_97dcbfb9(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (96 * ('cd', 36).length) + 36 <= calldata.size
    if ('cd', 36).length and 2 > -1 / ('cd', 36).length:
        revert with 'NH{q', 17
    if 2 * ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = 2 * ('cd', 36).length
    mem[64] = (64 * ('cd', 36).length) + 128
    if not uint255(('cd', 36).length):
        idx = 0
        s = cd[4]
        while idx < ('cd', 36).length:
            require cd[((96 * idx) + cd[36] + 100)] == uint8(cd[((96 * idx) + cd[36] + 100)])
            if uint8(cd[((96 * idx) + cd[36] + 100)]):
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((96 * idx) + cd[36] + 36)] == address(cd[((96 * idx) + cd[36] + 36)])
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((96 * idx) + cd[36] + 68)] == address(cd[((96 * idx) + cd[36] + 68)])
            require ext_code.size(address(cd[((96 * idx) + cd[36] + 68)]))
            staticcall address(cd[((96 * idx) + cd[36] + 68)]).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _58 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_58] == mem[_58 + 12 len 20]
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((96 * idx) + cd[36] + 68)] == address(cd[((96 * idx) + cd[36] + 68)])
            require ext_code.size(address(cd[((96 * idx) + cd[36] + 68)]))
            staticcall address(cd[((96 * idx) + cd[36] + 68)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_58 + 12 len 20] != address(cd[((96 * idx) + cd[36] + 36)]):
                _70 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _74 = mem[_70]
                require mem[_70] == mem[_70 + 18 len 14]
                _78 = mem[_70 + 32]
                require mem[_70 + 32] == mem[_70 + 50 len 14]
                require mem[_70 + 64] == mem[_70 + 92 len 4]
                if s and 997 > -1 / s:
                    revert with 'NH{q', 17
                if 997 * s and mem[_70 + 18 len 14] > -1 / 997 * s:
                    revert with 'NH{q', 17
                if mem[_70 + 50 len 14] and 1000 > -1 / mem[_70 + 50 len 14]:
                    revert with 'NH{q', 17
                if 1000 * mem[_70 + 50 len 14] > (-997 * s) - 1:
                    revert with 'NH{q', 17
                if not (1000 * mem[_70 + 50 len 14]) + (997 * s):
                    revert with 'NH{q', 18
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                if 2 * idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(64 * idx) + 128] = 997 * s * mem[_70 + 18 len 14] / (1000 * mem[_70 + 50 len 14]) + (997 * s)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 997 * s * Mask(112, 0, _74) / (1000 * Mask(112, 0, _78)) + (997 * s)
                continue 
            _71 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _75 = mem[_71]
            require mem[_71] == mem[_71 + 18 len 14]
            _79 = mem[_71 + 32]
            require mem[_71 + 32] == mem[_71 + 50 len 14]
            require mem[_71 + 64] == mem[_71 + 92 len 4]
            if s and 997 > -1 / s:
                revert with 'NH{q', 17
            if 997 * s and mem[_71 + 50 len 14] > -1 / 997 * s:
                revert with 'NH{q', 17
            if mem[_71 + 18 len 14] and 1000 > -1 / mem[_71 + 18 len 14]:
                revert with 'NH{q', 17
            if 1000 * mem[_71 + 18 len 14] > (-997 * s) - 1:
                revert with 'NH{q', 17
            if not (1000 * mem[_71 + 18 len 14]) + (997 * s):
                revert with 'NH{q', 18
            if idx and 2 > -1 / idx:
                revert with 'NH{q', 17
            if 2 * idx > -2:
                revert with 'NH{q', 17
            if (2 * idx) + 1 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * (2 * idx) + 1) + 128] = 997 * s * mem[_71 + 50 len 14] / (1000 * mem[_71 + 18 len 14]) + (997 * s)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = 997 * s * Mask(112, 0, _79) / (1000 * Mask(112, 0, _75)) + (997 * s)
            continue 
    else:
        mem[128 len 64 * ('cd', 36).length] = call.data[calldata.size len 64 * ('cd', 36).length]
        idx = 0
        s = cd[4]
        while idx < ('cd', 36).length:
            require cd[((96 * idx) + cd[36] + 100)] == uint8(cd[((96 * idx) + cd[36] + 100)])
            if uint8(cd[((96 * idx) + cd[36] + 100)]):
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((96 * idx) + cd[36] + 36)] == address(cd[((96 * idx) + cd[36] + 36)])
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((96 * idx) + cd[36] + 68)] == address(cd[((96 * idx) + cd[36] + 68)])
            require ext_code.size(address(cd[((96 * idx) + cd[36] + 68)]))
            staticcall address(cd[((96 * idx) + cd[36] + 68)]).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _59 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_59] == mem[_59 + 12 len 20]
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((96 * idx) + cd[36] + 68)] == address(cd[((96 * idx) + cd[36] + 68)])
            require ext_code.size(address(cd[((96 * idx) + cd[36] + 68)]))
            staticcall address(cd[((96 * idx) + cd[36] + 68)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_59 + 12 len 20] != address(cd[((96 * idx) + cd[36] + 36)]):
                _72 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _76 = mem[_72]
                require mem[_72] == mem[_72 + 18 len 14]
                _80 = mem[_72 + 32]
                require mem[_72 + 32] == mem[_72 + 50 len 14]
                require mem[_72 + 64] == mem[_72 + 92 len 4]
                if s and 997 > -1 / s:
                    revert with 'NH{q', 17
                if 997 * s and mem[_72 + 18 len 14] > -1 / 997 * s:
                    revert with 'NH{q', 17
                if mem[_72 + 50 len 14] and 1000 > -1 / mem[_72 + 50 len 14]:
                    revert with 'NH{q', 17
                if 1000 * mem[_72 + 50 len 14] > (-997 * s) - 1:
                    revert with 'NH{q', 17
                if not (1000 * mem[_72 + 50 len 14]) + (997 * s):
                    revert with 'NH{q', 18
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                if 2 * idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(64 * idx) + 128] = 997 * s * mem[_72 + 18 len 14] / (1000 * mem[_72 + 50 len 14]) + (997 * s)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 997 * s * Mask(112, 0, _76) / (1000 * Mask(112, 0, _80)) + (997 * s)
                continue 
            _73 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _77 = mem[_73]
            require mem[_73] == mem[_73 + 18 len 14]
            _81 = mem[_73 + 32]
            require mem[_73 + 32] == mem[_73 + 50 len 14]
            require mem[_73 + 64] == mem[_73 + 92 len 4]
            if s and 997 > -1 / s:
                revert with 'NH{q', 17
            if 997 * s and mem[_73 + 50 len 14] > -1 / 997 * s:
                revert with 'NH{q', 17
            if mem[_73 + 18 len 14] and 1000 > -1 / mem[_73 + 18 len 14]:
                revert with 'NH{q', 17
            if 1000 * mem[_73 + 18 len 14] > (-997 * s) - 1:
                revert with 'NH{q', 17
            if not (1000 * mem[_73 + 18 len 14]) + (997 * s):
                revert with 'NH{q', 18
            if idx and 2 > -1 / idx:
                revert with 'NH{q', 17
            if 2 * idx > -2:
                revert with 'NH{q', 17
            if (2 * idx) + 1 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * (2 * idx) + 1) + 128] = 997 * s * mem[_73 + 50 len 14] / (1000 * mem[_73 + 18 len 14]) + (997 * s)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = 997 * s * Mask(112, 0, _81) / (1000 * Mask(112, 0, _77)) + (997 * s)
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function sub_5f1748cc(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (96 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] == bool(cd[100])
    mem[0] = msg.sender
    mem[32] = 101
    if not stor101[address(msg.sender)]:
        revert with 0, 'PGOCA:not PG'
    if 0 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require ('cd', 68)[0] == address(('cd', 68)[0])
    mem[100] = this.address
    require ext_code.size(address(('cd', 68)[0]))
    staticcall address(('cd', 68)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ('cd', 68).length and 2 > -1 / ('cd', 68).length:
        revert with 'NH{q', 17
    if 2 * ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + 96] = 2 * ('cd', 68).length
    mem[64] = ceil32(return_data.size) + (64 * ('cd', 68).length) + 128
    if not uint255(('cd', 68).length):
        idx = 0
        while idx < ('cd', 68).length:
            require cd[((96 * idx) + cd[68] + 100)] == uint8(cd[((96 * idx) + cd[68] + 100)])
            if not uint8(cd[((96 * idx) + cd[68] + 100)]):
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((96 * idx) + cd[68] + 36)] == address(cd[((96 * idx) + cd[68] + 36)])
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((96 * idx) + cd[68] + 68)] == address(cd[((96 * idx) + cd[68] + 68)])
                require ext_code.size(address(cd[((96 * idx) + cd[68] + 68)]))
                staticcall address(cd[((96 * idx) + cd[68] + 68)]).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _134 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_134] == mem[_134 + 12 len 20]
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((96 * idx) + cd[68] + 68)] == address(cd[((96 * idx) + cd[68] + 68)])
                require ext_code.size(address(cd[((96 * idx) + cd[68] + 68)]))
                staticcall address(cd[((96 * idx) + cd[68] + 68)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_134 + 12 len 20] != address(cd[((96 * idx) + cd[68] + 36)]):
                    _155 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_155] == mem[_155 + 18 len 14]
                    require mem[_155 + 32] == mem[_155 + 50 len 14]
                    require mem[_155 + 64] == mem[_155 + 92 len 4]
                    if cd[4] and 997 > -1 / cd[4]:
                        revert with 'NH{q', 17
                    if 997 * cd[4] and mem[_155 + 18 len 14] > -1 / 997 * cd[4]:
                        revert with 'NH{q', 17
                    if mem[_155 + 50 len 14] and 1000 > -1 / mem[_155 + 50 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * mem[_155 + 50 len 14] > (-997 * cd[4]) - 1:
                        revert with 'NH{q', 17
                    if not (1000 * mem[_155 + 50 len 14]) + (997 * cd[4]):
                        revert with 'NH{q', 18
                    if idx and 2 > -1 / idx:
                        revert with 'NH{q', 17
                    if 2 * idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(64 * idx) + ceil32(return_data.size) + 128] = 997 * cd[4] * mem[_155 + 18 len 14] / (1000 * mem[_155 + 50 len 14]) + (997 * cd[4])
                else:
                    _156 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_156] == mem[_156 + 18 len 14]
                    require mem[_156 + 32] == mem[_156 + 50 len 14]
                    require mem[_156 + 64] == mem[_156 + 92 len 4]
                    if cd[4] and 997 > -1 / cd[4]:
                        revert with 'NH{q', 17
                    if 997 * cd[4] and mem[_156 + 50 len 14] > -1 / 997 * cd[4]:
                        revert with 'NH{q', 17
                    if mem[_156 + 18 len 14] and 1000 > -1 / mem[_156 + 18 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * mem[_156 + 18 len 14] > (-997 * cd[4]) - 1:
                        revert with 'NH{q', 17
                    if not (1000 * mem[_156 + 18 len 14]) + (997 * cd[4]):
                        revert with 'NH{q', 18
                    if idx and 2 > -1 / idx:
                        revert with 'NH{q', 17
                    if 2 * idx > -2:
                        revert with 'NH{q', 17
                    if (2 * idx) + 1 >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * (2 * idx) + 1) + ceil32(return_data.size) + 128] = 997 * cd[4] * mem[_156 + 50 len 14] / (1000 * mem[_156 + 18 len 14]) + (997 * cd[4])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if cd[100]:
            if 0 >= ('cd', 68).length:
                revert with 'NH{q', 50
            require ('cd', 68)[0] == address(('cd', 68)[0])
            if 0 >= ('cd', 68).length:
                revert with 'NH{q', 50
            require ('cd', 68)[1] == address(('cd', 68)[1])
            mem[mem[64] + 4] = address(('cd', 68)[1])
            mem[mem[64] + 36] = cd[4]
            require ext_code.size(address(('cd', 68)[0]))
            call address(('cd', 68)[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(('cd', 68)[1]), cd[4]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _139 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_139] == bool(mem[_139])
            if ('cd', 68).length < 1:
                revert with 'NH{q', 17
            if var245002 < ('cd', 68).length - 1:
                if var247001 < ('cd', 68).length:
                    require cd[((96 * var247001) + cd[68] + 68)] == address(cd[((96 * var247001) + cd[68] + 68)])
                    _2089 = mem[ceil32(return_data.size) + 96]
                    s = var247001
                    t = var247001
                    idx = var247002
                    while idx < _2089:
                        _2093 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                            revert with 'NH{q', 50
                        _2101 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                        if t > -2:
                            revert with 'NH{q', 17
                        if t + 1 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((96 * t) + cd[68] + 164)] == address(cd[((96 * t) + cd[68] + 164)])
                        _2105 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2105 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2105 + 36] = _2093
                        mem[_2105 + 68] = _2101
                        mem[_2105 + 100] = address(cd[((96 * t) + cd[68] + 164)])
                        mem[_2105 + 132] = 128
                        mem[_2105 + 164] = mem[_2105]
                        u = 0
                        while u < mem[_2105]:
                            mem[_2105 + u + 196] = mem[_2105 + u + 32]
                            require cd[((96 * s) + cd[68] + 68)] == address(cd[((96 * s) + cd[68] + 68)])
                            u = u + 32
                            continue 
                        if ceil32(mem[_2105]) <= mem[_2105]:
                            require ext_code.size(address(cd[((96 * s) + cd[68] + 68)]))
                            call address(cd[((96 * s) + cd[68] + 68)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2093, _2101, address(cd[((96 * t) + cd[68] + 164)]), Array(len=mem[_2105], data=mem[_2105 + 196 len ceil32(mem[_2105])])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if t == -1:
                                revert with 'NH{q', 17
                            if idx > -3:
                                revert with 'NH{q', 17
                            if ('cd', 68).length < 1:
                                revert with 'NH{q', 17
                            if t + 1 < ('cd', 68).length - 1:
                                require cd[((96 * t) + cd[68] + 260)] == address(cd[((96 * t) + cd[68] + 260)])
                                s = t + 1
                                t = t + 1
                                idx = idx + 2
                                continue 
                            if ('cd', 68).length < 1:
                                revert with 'NH{q', 17
                            if ('cd', 68).length - 1 >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((96 * ('cd', 68).length) + cd[68] - 28)] == address(cd[((96 * ('cd', 68).length) + cd[68] - 28)])
                            if idx + 2 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            _2321 = mem[(32 * idx + 2) + ceil32(return_data.size) + 128]
                            if idx + 2 > -2:
                                revert with 'NH{q', 17
                            if idx + 3 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            _2337 = mem[(32 * idx + 3) + ceil32(return_data.size) + 128]
                            mem[_2105 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2105 + 68] = _2321
                            idx = 0
                            while idx < 0:
                                mem[_2105 + idx + 228] = mem[_2105 + idx + 64]
                                require cd[((96 * s) + cd[68] + 68)] == address(cd[((96 * s) + cd[68] + 68)])
                                idx = idx + 32
                                continue 
                            require ext_code.size(address(cd[((96 * ('cd', 68).length) + cd[68] - 28)]))
                            call address(cd[((96 * ('cd', 68).length) + cd[68] - 28)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2321, _2337, address(this.address), 128, 0
                        else:
                            mem[_2105 + mem[_2105] + 196] = 0
                            require ext_code.size(address(cd[((96 * s) + cd[68] + 68)]))
                            call address(cd[((96 * s) + cd[68] + 68)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2093, _2101, address(cd[((96 * t) + cd[68] + 164)]), Array(len=mem[_2105], data=mem[_2105 + 196 len ceil32(mem[_2105])])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if t == -1:
                                revert with 'NH{q', 17
                            if idx > -3:
                                revert with 'NH{q', 17
                            if ('cd', 68).length < 1:
                                revert with 'NH{q', 17
                            if t + 1 < ('cd', 68).length - 1:
                                require cd[((96 * t) + cd[68] + 260)] == address(cd[((96 * t) + cd[68] + 260)])
                                s = t + 1
                                t = t + 1
                                idx = idx + 2
                                continue 
                            if ('cd', 68).length < 1:
                                revert with 'NH{q', 17
                            if ('cd', 68).length - 1 >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((96 * ('cd', 68).length) + cd[68] - 28)] == address(cd[((96 * ('cd', 68).length) + cd[68] - 28)])
                            if idx + 2 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            _2329 = mem[(32 * idx + 2) + ceil32(return_data.size) + 128]
                            if idx + 2 > -2:
                                revert with 'NH{q', 17
                            if idx + 3 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            _2346 = mem[(32 * idx + 3) + ceil32(return_data.size) + 128]
                            mem[_2105 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2105 + 68] = _2329
                            idx = 0
                            while idx < 0:
                                mem[_2105 + idx + 228] = mem[_2105 + idx + 64]
                                require cd[((96 * s) + cd[68] + 68)] == address(cd[((96 * s) + cd[68] + 68)])
                                idx = idx + 32
                                continue 
                            require ext_code.size(address(cd[((96 * ('cd', 68).length) + cd[68] - 28)]))
                            call address(cd[((96 * ('cd', 68).length) + cd[68] - 28)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2329, _2346, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if cd[100]:
                            return 0
                        if 0 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require ('cd', 68)[0] == address(('cd', 68)[0])
                        require ext_code.size(address(('cd', 68)[0]))
                        staticcall address(('cd', 68)[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 0 < cd[36]:
                            revert with 'NH{q', 17
                        if -cd[36] <= 0:
                            revert with 0, 'PGA:failed'
                        return -cd[36]
                revert with 'NH{q', 50
            if ('cd', 68).length < 1:
                revert with 'NH{q', 17
            if ('cd', 68).length - 1 >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((96 * ('cd', 68).length) + cd[68] - 28)] == address(cd[((96 * ('cd', 68).length) + cd[68] - 28)])
            if var245003 >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _1457 = mem[(32 * var245003) + ceil32(return_data.size) + 128]
            if var245003 > -2:
                revert with 'NH{q', 17
            if var245003 + 1 >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _1473 = mem[(32 * var245003 + 1) + ceil32(return_data.size) + 128]
            _1477 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1477 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_1477 + 36] = _1457
            mem[_1477 + 68] = _1473
            mem[_1477 + 100] = this.address
            mem[_1477 + 132] = 128
            mem[_1477 + 164] = mem[_1477]
            mem[_1477 + 196 len ceil32(mem[_1477])] = mem[_1477 + 32 len ceil32(mem[_1477])]
            if ceil32(mem[_1477]) > mem[_1477]:
                mem[_1477 + mem[_1477] + 196] = 0
            require ext_code.size(address(cd[((96 * ('cd', 68).length) + cd[68] - 28)]))
            call address(cd[((96 * ('cd', 68).length) + cd[68] - 28)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _1457, _1473, address(this.address), Array(len=mem[_1477], data=mem[_1477 + 196 len ceil32(mem[_1477])])
        else:
            if mem[ceil32(return_data.size) + 96] < 2:
                revert with 'NH{q', 17
            if mem[ceil32(return_data.size) + 96] - 2 >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            if mem[ceil32(return_data.size) + 96] < 1:
                revert with 'NH{q', 17
            if mem[ceil32(return_data.size) + 96] - 1 >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            if mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] > -mem[(32 * mem[ceil32(return_data.size) + 96] - 2) + ceil32(return_data.size) + 128] - 1:
                revert with 'NH{q', 17
            if cd[4] > -cd[36] - 1:
                revert with 'NH{q', 17
            if mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] + mem[(32 * mem[ceil32(return_data.size) + 96] - 2) + ceil32(return_data.size) + 128] <= cd[4] + cd[36]:
                return 0
            if 0 >= ('cd', 68).length:
                revert with 'NH{q', 50
            require ('cd', 68)[0] == address(('cd', 68)[0])
            if 0 >= ('cd', 68).length:
                revert with 'NH{q', 50
            require ('cd', 68)[1] == address(('cd', 68)[1])
            mem[mem[64] + 4] = address(('cd', 68)[1])
            mem[mem[64] + 36] = cd[4]
            require ext_code.size(address(('cd', 68)[0]))
            call address(('cd', 68)[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(('cd', 68)[1]), cd[4]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _166 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_166] == bool(mem[_166])
            if ('cd', 68).length < 1:
                revert with 'NH{q', 17
            if var277002 < ('cd', 68).length - 1:
                if var279001 < ('cd', 68).length:
                    require cd[((96 * var279001) + cd[68] + 68)] == address(cd[((96 * var279001) + cd[68] + 68)])
                    _2090 = mem[ceil32(return_data.size) + 96]
                    s = var279001
                    t = var279001
                    idx = var279002
                    while idx < _2090:
                        _2094 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                            revert with 'NH{q', 50
                        _2102 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                        if t > -2:
                            revert with 'NH{q', 17
                        if t + 1 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((96 * t) + cd[68] + 164)] == address(cd[((96 * t) + cd[68] + 164)])
                        _2106 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2106 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2106 + 36] = _2094
                        mem[_2106 + 68] = _2102
                        mem[_2106 + 100] = address(cd[((96 * t) + cd[68] + 164)])
                        mem[_2106 + 132] = 128
                        mem[_2106 + 164] = mem[_2106]
                        u = 0
                        while u < mem[_2106]:
                            mem[_2106 + u + 196] = mem[_2106 + u + 32]
                            require cd[((96 * s) + cd[68] + 68)] == address(cd[((96 * s) + cd[68] + 68)])
                            u = u + 32
                            continue 
                        if ceil32(mem[_2106]) <= mem[_2106]:
                            require ext_code.size(address(cd[((96 * s) + cd[68] + 68)]))
                            call address(cd[((96 * s) + cd[68] + 68)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2094, _2102, address(cd[((96 * t) + cd[68] + 164)]), Array(len=mem[_2106], data=mem[_2106 + 196 len ceil32(mem[_2106])])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if t == -1:
                                revert with 'NH{q', 17
                            if idx > -3:
                                revert with 'NH{q', 17
                            if ('cd', 68).length < 1:
                                revert with 'NH{q', 17
                            if t + 1 < ('cd', 68).length - 1:
                                require cd[((96 * t) + cd[68] + 260)] == address(cd[((96 * t) + cd[68] + 260)])
                                s = t + 1
                                t = t + 1
                                idx = idx + 2
                                continue 
                            if ('cd', 68).length < 1:
                                revert with 'NH{q', 17
                            if ('cd', 68).length - 1 >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((96 * ('cd', 68).length) + cd[68] - 28)] == address(cd[((96 * ('cd', 68).length) + cd[68] - 28)])
                            if idx + 2 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            _2323 = mem[(32 * idx + 2) + ceil32(return_data.size) + 128]
                            if idx + 2 > -2:
                                revert with 'NH{q', 17
                            if idx + 3 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            _2339 = mem[(32 * idx + 3) + ceil32(return_data.size) + 128]
                            mem[_2106 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2106 + 68] = _2323
                            idx = 0
                            while idx < 0:
                                mem[_2106 + idx + 228] = mem[_2106 + idx + 64]
                                require cd[((96 * s) + cd[68] + 68)] == address(cd[((96 * s) + cd[68] + 68)])
                                idx = idx + 32
                                continue 
                            require ext_code.size(address(cd[((96 * ('cd', 68).length) + cd[68] - 28)]))
                            call address(cd[((96 * ('cd', 68).length) + cd[68] - 28)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2323, _2339, address(this.address), 128, 0
                        else:
                            mem[_2106 + mem[_2106] + 196] = 0
                            require ext_code.size(address(cd[((96 * s) + cd[68] + 68)]))
                            call address(cd[((96 * s) + cd[68] + 68)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2094, _2102, address(cd[((96 * t) + cd[68] + 164)]), Array(len=mem[_2106], data=mem[_2106 + 196 len ceil32(mem[_2106])])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if t == -1:
                                revert with 'NH{q', 17
                            if idx > -3:
                                revert with 'NH{q', 17
                            if ('cd', 68).length < 1:
                                revert with 'NH{q', 17
                            if t + 1 < ('cd', 68).length - 1:
                                require cd[((96 * t) + cd[68] + 260)] == address(cd[((96 * t) + cd[68] + 260)])
                                s = t + 1
                                t = t + 1
                                idx = idx + 2
                                continue 
                            if ('cd', 68).length < 1:
                                revert with 'NH{q', 17
                            if ('cd', 68).length - 1 >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((96 * ('cd', 68).length) + cd[68] - 28)] == address(cd[((96 * ('cd', 68).length) + cd[68] - 28)])
                            if idx + 2 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            _2330 = mem[(32 * idx + 2) + ceil32(return_data.size) + 128]
                            if idx + 2 > -2:
                                revert with 'NH{q', 17
                            if idx + 3 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            _2348 = mem[(32 * idx + 3) + ceil32(return_data.size) + 128]
                            mem[_2106 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2106 + 68] = _2330
                            idx = 0
                            while idx < 0:
                                mem[_2106 + idx + 228] = mem[_2106 + idx + 64]
                                require cd[((96 * s) + cd[68] + 68)] == address(cd[((96 * s) + cd[68] + 68)])
                                idx = idx + 32
                                continue 
                            require ext_code.size(address(cd[((96 * ('cd', 68).length) + cd[68] - 28)]))
                            call address(cd[((96 * ('cd', 68).length) + cd[68] - 28)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2330, _2348, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if cd[100]:
                            return 0
                        if 0 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require ('cd', 68)[0] == address(('cd', 68)[0])
                        require ext_code.size(address(('cd', 68)[0]))
                        staticcall address(('cd', 68)[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 0 < cd[36]:
                            revert with 'NH{q', 17
                        if -cd[36] <= 0:
                            revert with 0, 'PGA:failed'
                        return -cd[36]
                revert with 'NH{q', 50
            if ('cd', 68).length < 1:
                revert with 'NH{q', 17
            if ('cd', 68).length - 1 >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((96 * ('cd', 68).length) + cd[68] - 28)] == address(cd[((96 * ('cd', 68).length) + cd[68] - 28)])
            if var277003 >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _1459 = mem[(32 * var277003) + ceil32(return_data.size) + 128]
            if var277003 > -2:
                revert with 'NH{q', 17
            if var277003 + 1 >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _1474 = mem[(32 * var277003 + 1) + ceil32(return_data.size) + 128]
            _1478 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1478 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_1478 + 36] = _1459
            mem[_1478 + 68] = _1474
            mem[_1478 + 100] = this.address
            mem[_1478 + 132] = 128
            mem[_1478 + 164] = mem[_1478]
            mem[_1478 + 196 len ceil32(mem[_1478])] = mem[_1478 + 32 len ceil32(mem[_1478])]
            if ceil32(mem[_1478]) > mem[_1478]:
                mem[_1478 + mem[_1478] + 196] = 0
            require ext_code.size(address(cd[((96 * ('cd', 68).length) + cd[68] - 28)]))
            call address(cd[((96 * ('cd', 68).length) + cd[68] - 28)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _1459, _1474, address(this.address), Array(len=mem[_1478], data=mem[_1478 + 196 len ceil32(mem[_1478])])
    else:
        mem[ceil32(return_data.size) + 128 len 64 * ('cd', 68).length] = call.data[calldata.size len 64 * ('cd', 68).length]
        idx = 0
        while idx < ('cd', 68).length:
            require cd[((96 * idx) + cd[68] + 100)] == uint8(cd[((96 * idx) + cd[68] + 100)])
            if not uint8(cd[((96 * idx) + cd[68] + 100)]):
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((96 * idx) + cd[68] + 36)] == address(cd[((96 * idx) + cd[68] + 36)])
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((96 * idx) + cd[68] + 68)] == address(cd[((96 * idx) + cd[68] + 68)])
                require ext_code.size(address(cd[((96 * idx) + cd[68] + 68)]))
                staticcall address(cd[((96 * idx) + cd[68] + 68)]).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _136 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_136] == mem[_136 + 12 len 20]
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((96 * idx) + cd[68] + 68)] == address(cd[((96 * idx) + cd[68] + 68)])
                require ext_code.size(address(cd[((96 * idx) + cd[68] + 68)]))
                staticcall address(cd[((96 * idx) + cd[68] + 68)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_136 + 12 len 20] != address(cd[((96 * idx) + cd[68] + 36)]):
                    _157 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_157] == mem[_157 + 18 len 14]
                    require mem[_157 + 32] == mem[_157 + 50 len 14]
                    require mem[_157 + 64] == mem[_157 + 92 len 4]
                    if cd[4] and 997 > -1 / cd[4]:
                        revert with 'NH{q', 17
                    if 997 * cd[4] and mem[_157 + 18 len 14] > -1 / 997 * cd[4]:
                        revert with 'NH{q', 17
                    if mem[_157 + 50 len 14] and 1000 > -1 / mem[_157 + 50 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * mem[_157 + 50 len 14] > (-997 * cd[4]) - 1:
                        revert with 'NH{q', 17
                    if not (1000 * mem[_157 + 50 len 14]) + (997 * cd[4]):
                        revert with 'NH{q', 18
                    if idx and 2 > -1 / idx:
                        revert with 'NH{q', 17
                    if 2 * idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(64 * idx) + ceil32(return_data.size) + 128] = 997 * cd[4] * mem[_157 + 18 len 14] / (1000 * mem[_157 + 50 len 14]) + (997 * cd[4])
                else:
                    _158 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_158] == mem[_158 + 18 len 14]
                    require mem[_158 + 32] == mem[_158 + 50 len 14]
                    require mem[_158 + 64] == mem[_158 + 92 len 4]
                    if cd[4] and 997 > -1 / cd[4]:
                        revert with 'NH{q', 17
                    if 997 * cd[4] and mem[_158 + 50 len 14] > -1 / 997 * cd[4]:
                        revert with 'NH{q', 17
                    if mem[_158 + 18 len 14] and 1000 > -1 / mem[_158 + 18 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * mem[_158 + 18 len 14] > (-997 * cd[4]) - 1:
                        revert with 'NH{q', 17
                    if not (1000 * mem[_158 + 18 len 14]) + (997 * cd[4]):
                        revert with 'NH{q', 18
                    if idx and 2 > -1 / idx:
                        revert with 'NH{q', 17
                    if 2 * idx > -2:
                        revert with 'NH{q', 17
                    if (2 * idx) + 1 >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    mem[(32 * (2 * idx) + 1) + ceil32(return_data.size) + 128] = 997 * cd[4] * mem[_158 + 50 len 14] / (1000 * mem[_158 + 18 len 14]) + (997 * cd[4])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if cd[100]:
            if 0 >= ('cd', 68).length:
                revert with 'NH{q', 50
            require ('cd', 68)[0] == address(('cd', 68)[0])
            if 0 >= ('cd', 68).length:
                revert with 'NH{q', 50
            require ('cd', 68)[1] == address(('cd', 68)[1])
            mem[mem[64] + 4] = address(('cd', 68)[1])
            mem[mem[64] + 36] = cd[4]
            require ext_code.size(address(('cd', 68)[0]))
            call address(('cd', 68)[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(('cd', 68)[1]), cd[4]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _140 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_140] == bool(mem[_140])
            if ('cd', 68).length < 1:
                revert with 'NH{q', 17
            if var246002 < ('cd', 68).length - 1:
                if var248001 < ('cd', 68).length:
                    require cd[((96 * var248001) + cd[68] + 68)] == address(cd[((96 * var248001) + cd[68] + 68)])
                    _2091 = mem[ceil32(return_data.size) + 96]
                    s = var248001
                    t = var248001
                    idx = var248002
                    while idx < _2091:
                        _2095 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                            revert with 'NH{q', 50
                        _2103 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                        if t > -2:
                            revert with 'NH{q', 17
                        if t + 1 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((96 * t) + cd[68] + 164)] == address(cd[((96 * t) + cd[68] + 164)])
                        _2107 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2107 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2107 + 36] = _2095
                        mem[_2107 + 68] = _2103
                        mem[_2107 + 100] = address(cd[((96 * t) + cd[68] + 164)])
                        mem[_2107 + 132] = 128
                        mem[_2107 + 164] = mem[_2107]
                        u = 0
                        while u < mem[_2107]:
                            mem[_2107 + u + 196] = mem[_2107 + u + 32]
                            require cd[((96 * s) + cd[68] + 68)] == address(cd[((96 * s) + cd[68] + 68)])
                            u = u + 32
                            continue 
                        if ceil32(mem[_2107]) <= mem[_2107]:
                            require ext_code.size(address(cd[((96 * s) + cd[68] + 68)]))
                            call address(cd[((96 * s) + cd[68] + 68)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2095, _2103, address(cd[((96 * t) + cd[68] + 164)]), Array(len=mem[_2107], data=mem[_2107 + 196 len ceil32(mem[_2107])])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if t == -1:
                                revert with 'NH{q', 17
                            if idx > -3:
                                revert with 'NH{q', 17
                            if ('cd', 68).length < 1:
                                revert with 'NH{q', 17
                            if t + 1 < ('cd', 68).length - 1:
                                require cd[((96 * t) + cd[68] + 260)] == address(cd[((96 * t) + cd[68] + 260)])
                                s = t + 1
                                t = t + 1
                                idx = idx + 2
                                continue 
                            if ('cd', 68).length < 1:
                                revert with 'NH{q', 17
                            if ('cd', 68).length - 1 >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((96 * ('cd', 68).length) + cd[68] - 28)] == address(cd[((96 * ('cd', 68).length) + cd[68] - 28)])
                            if idx + 2 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            _2325 = mem[(32 * idx + 2) + ceil32(return_data.size) + 128]
                            if idx + 2 > -2:
                                revert with 'NH{q', 17
                            if idx + 3 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            _2341 = mem[(32 * idx + 3) + ceil32(return_data.size) + 128]
                            mem[_2107 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2107 + 68] = _2325
                            idx = 0
                            while idx < 0:
                                mem[_2107 + idx + 228] = mem[_2107 + idx + 64]
                                require cd[((96 * s) + cd[68] + 68)] == address(cd[((96 * s) + cd[68] + 68)])
                                idx = idx + 32
                                continue 
                            require ext_code.size(address(cd[((96 * ('cd', 68).length) + cd[68] - 28)]))
                            call address(cd[((96 * ('cd', 68).length) + cd[68] - 28)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2325, _2341, address(this.address), 128, 0
                        else:
                            mem[_2107 + mem[_2107] + 196] = 0
                            require ext_code.size(address(cd[((96 * s) + cd[68] + 68)]))
                            call address(cd[((96 * s) + cd[68] + 68)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2095, _2103, address(cd[((96 * t) + cd[68] + 164)]), Array(len=mem[_2107], data=mem[_2107 + 196 len ceil32(mem[_2107])])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if t == -1:
                                revert with 'NH{q', 17
                            if idx > -3:
                                revert with 'NH{q', 17
                            if ('cd', 68).length < 1:
                                revert with 'NH{q', 17
                            if t + 1 < ('cd', 68).length - 1:
                                require cd[((96 * t) + cd[68] + 260)] == address(cd[((96 * t) + cd[68] + 260)])
                                s = t + 1
                                t = t + 1
                                idx = idx + 2
                                continue 
                            if ('cd', 68).length < 1:
                                revert with 'NH{q', 17
                            if ('cd', 68).length - 1 >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((96 * ('cd', 68).length) + cd[68] - 28)] == address(cd[((96 * ('cd', 68).length) + cd[68] - 28)])
                            if idx + 2 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            _2331 = mem[(32 * idx + 2) + ceil32(return_data.size) + 128]
                            if idx + 2 > -2:
                                revert with 'NH{q', 17
                            if idx + 3 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            _2350 = mem[(32 * idx + 3) + ceil32(return_data.size) + 128]
                            mem[_2107 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2107 + 68] = _2331
                            idx = 0
                            while idx < 0:
                                mem[_2107 + idx + 228] = mem[_2107 + idx + 64]
                                require cd[((96 * s) + cd[68] + 68)] == address(cd[((96 * s) + cd[68] + 68)])
                                idx = idx + 32
                                continue 
                            require ext_code.size(address(cd[((96 * ('cd', 68).length) + cd[68] - 28)]))
                            call address(cd[((96 * ('cd', 68).length) + cd[68] - 28)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2331, _2350, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if cd[100]:
                            return 0
                        if 0 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require ('cd', 68)[0] == address(('cd', 68)[0])
                        require ext_code.size(address(('cd', 68)[0]))
                        staticcall address(('cd', 68)[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 0 < cd[36]:
                            revert with 'NH{q', 17
                        if -cd[36] <= 0:
                            revert with 0, 'PGA:failed'
                        return -cd[36]
                revert with 'NH{q', 50
            if ('cd', 68).length < 1:
                revert with 'NH{q', 17
            if ('cd', 68).length - 1 >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((96 * ('cd', 68).length) + cd[68] - 28)] == address(cd[((96 * ('cd', 68).length) + cd[68] - 28)])
            if var246003 >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _1461 = mem[(32 * var246003) + ceil32(return_data.size) + 128]
            if var246003 > -2:
                revert with 'NH{q', 17
            if var246003 + 1 >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _1475 = mem[(32 * var246003 + 1) + ceil32(return_data.size) + 128]
            _1479 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1479 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_1479 + 36] = _1461
            mem[_1479 + 68] = _1475
            mem[_1479 + 100] = this.address
            mem[_1479 + 132] = 128
            mem[_1479 + 164] = mem[_1479]
            mem[_1479 + 196 len ceil32(mem[_1479])] = mem[_1479 + 32 len ceil32(mem[_1479])]
            if ceil32(mem[_1479]) > mem[_1479]:
                mem[_1479 + mem[_1479] + 196] = 0
            require ext_code.size(address(cd[((96 * ('cd', 68).length) + cd[68] - 28)]))
            call address(cd[((96 * ('cd', 68).length) + cd[68] - 28)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _1461, _1475, address(this.address), Array(len=mem[_1479], data=mem[_1479 + 196 len ceil32(mem[_1479])])
        else:
            if mem[ceil32(return_data.size) + 96] < 2:
                revert with 'NH{q', 17
            if mem[ceil32(return_data.size) + 96] - 2 >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            if mem[ceil32(return_data.size) + 96] < 1:
                revert with 'NH{q', 17
            if mem[ceil32(return_data.size) + 96] - 1 >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            if mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] > -mem[(32 * mem[ceil32(return_data.size) + 96] - 2) + ceil32(return_data.size) + 128] - 1:
                revert with 'NH{q', 17
            if cd[4] > -cd[36] - 1:
                revert with 'NH{q', 17
            if mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] + mem[(32 * mem[ceil32(return_data.size) + 96] - 2) + ceil32(return_data.size) + 128] <= cd[4] + cd[36]:
                return 0
            if 0 >= ('cd', 68).length:
                revert with 'NH{q', 50
            require ('cd', 68)[0] == address(('cd', 68)[0])
            if 0 >= ('cd', 68).length:
                revert with 'NH{q', 50
            require ('cd', 68)[1] == address(('cd', 68)[1])
            mem[mem[64] + 4] = address(('cd', 68)[1])
            mem[mem[64] + 36] = cd[4]
            require ext_code.size(address(('cd', 68)[0]))
            call address(('cd', 68)[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(('cd', 68)[1]), cd[4]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _168 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_168] == bool(mem[_168])
            if ('cd', 68).length < 1:
                revert with 'NH{q', 17
            if var278002 < ('cd', 68).length - 1:
                if var280001 < ('cd', 68).length:
                    require cd[((96 * var280001) + cd[68] + 68)] == address(cd[((96 * var280001) + cd[68] + 68)])
                    _2092 = mem[ceil32(return_data.size) + 96]
                    s = var280001
                    t = var280001
                    idx = var280002
                    while idx < _2092:
                        _2096 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                            revert with 'NH{q', 50
                        _2104 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                        if t > -2:
                            revert with 'NH{q', 17
                        if t + 1 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((96 * t) + cd[68] + 164)] == address(cd[((96 * t) + cd[68] + 164)])
                        _2108 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2108 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2108 + 36] = _2096
                        mem[_2108 + 68] = _2104
                        mem[_2108 + 100] = address(cd[((96 * t) + cd[68] + 164)])
                        mem[_2108 + 132] = 128
                        mem[_2108 + 164] = mem[_2108]
                        u = 0
                        while u < mem[_2108]:
                            mem[_2108 + u + 196] = mem[_2108 + u + 32]
                            require cd[((96 * s) + cd[68] + 68)] == address(cd[((96 * s) + cd[68] + 68)])
                            u = u + 32
                            continue 
                        if ceil32(mem[_2108]) <= mem[_2108]:
                            require ext_code.size(address(cd[((96 * s) + cd[68] + 68)]))
                            call address(cd[((96 * s) + cd[68] + 68)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2096, _2104, address(cd[((96 * t) + cd[68] + 164)]), Array(len=mem[_2108], data=mem[_2108 + 196 len ceil32(mem[_2108])])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if t == -1:
                                revert with 'NH{q', 17
                            if idx > -3:
                                revert with 'NH{q', 17
                            if ('cd', 68).length < 1:
                                revert with 'NH{q', 17
                            if t + 1 < ('cd', 68).length - 1:
                                require cd[((96 * t) + cd[68] + 260)] == address(cd[((96 * t) + cd[68] + 260)])
                                s = t + 1
                                t = t + 1
                                idx = idx + 2
                                continue 
                            if ('cd', 68).length < 1:
                                revert with 'NH{q', 17
                            if ('cd', 68).length - 1 >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((96 * ('cd', 68).length) + cd[68] - 28)] == address(cd[((96 * ('cd', 68).length) + cd[68] - 28)])
                            if idx + 2 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            _2327 = mem[(32 * idx + 2) + ceil32(return_data.size) + 128]
                            if idx + 2 > -2:
                                revert with 'NH{q', 17
                            if idx + 3 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            _2343 = mem[(32 * idx + 3) + ceil32(return_data.size) + 128]
                            mem[_2108 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2108 + 68] = _2327
                            idx = 0
                            while idx < 0:
                                mem[_2108 + idx + 228] = mem[_2108 + idx + 64]
                                require cd[((96 * s) + cd[68] + 68)] == address(cd[((96 * s) + cd[68] + 68)])
                                idx = idx + 32
                                continue 
                            require ext_code.size(address(cd[((96 * ('cd', 68).length) + cd[68] - 28)]))
                            call address(cd[((96 * ('cd', 68).length) + cd[68] - 28)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2327, _2343, address(this.address), 128, 0
                        else:
                            mem[_2108 + mem[_2108] + 196] = 0
                            require ext_code.size(address(cd[((96 * s) + cd[68] + 68)]))
                            call address(cd[((96 * s) + cd[68] + 68)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2096, _2104, address(cd[((96 * t) + cd[68] + 164)]), Array(len=mem[_2108], data=mem[_2108 + 196 len ceil32(mem[_2108])])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if t == -1:
                                revert with 'NH{q', 17
                            if idx > -3:
                                revert with 'NH{q', 17
                            if ('cd', 68).length < 1:
                                revert with 'NH{q', 17
                            if t + 1 < ('cd', 68).length - 1:
                                require cd[((96 * t) + cd[68] + 260)] == address(cd[((96 * t) + cd[68] + 260)])
                                s = t + 1
                                t = t + 1
                                idx = idx + 2
                                continue 
                            if ('cd', 68).length < 1:
                                revert with 'NH{q', 17
                            if ('cd', 68).length - 1 >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((96 * ('cd', 68).length) + cd[68] - 28)] == address(cd[((96 * ('cd', 68).length) + cd[68] - 28)])
                            if idx + 2 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            _2332 = mem[(32 * idx + 2) + ceil32(return_data.size) + 128]
                            if idx + 2 > -2:
                                revert with 'NH{q', 17
                            if idx + 3 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            _2352 = mem[(32 * idx + 3) + ceil32(return_data.size) + 128]
                            mem[_2108 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2108 + 68] = _2332
                            idx = 0
                            while idx < 0:
                                mem[_2108 + idx + 228] = mem[_2108 + idx + 64]
                                require cd[((96 * s) + cd[68] + 68)] == address(cd[((96 * s) + cd[68] + 68)])
                                idx = idx + 32
                                continue 
                            require ext_code.size(address(cd[((96 * ('cd', 68).length) + cd[68] - 28)]))
                            call address(cd[((96 * ('cd', 68).length) + cd[68] - 28)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2332, _2352, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if cd[100]:
                            return 0
                        if 0 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require ('cd', 68)[0] == address(('cd', 68)[0])
                        require ext_code.size(address(('cd', 68)[0]))
                        staticcall address(('cd', 68)[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 0 < cd[36]:
                            revert with 'NH{q', 17
                        if -cd[36] <= 0:
                            revert with 0, 'PGA:failed'
                        return -cd[36]
                revert with 'NH{q', 50
            if ('cd', 68).length < 1:
                revert with 'NH{q', 17
            if ('cd', 68).length - 1 >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((96 * ('cd', 68).length) + cd[68] - 28)] == address(cd[((96 * ('cd', 68).length) + cd[68] - 28)])
            if var278003 >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _1463 = mem[(32 * var278003) + ceil32(return_data.size) + 128]
            if var278003 > -2:
                revert with 'NH{q', 17
            if var278003 + 1 >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _1476 = mem[(32 * var278003 + 1) + ceil32(return_data.size) + 128]
            _1480 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1480 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_1480 + 36] = _1463
            mem[_1480 + 68] = _1476
            mem[_1480 + 100] = this.address
            mem[_1480 + 132] = 128
            mem[_1480 + 164] = mem[_1480]
            mem[_1480 + 196 len ceil32(mem[_1480])] = mem[_1480 + 32 len ceil32(mem[_1480])]
            if ceil32(mem[_1480]) > mem[_1480]:
                mem[_1480 + mem[_1480] + 196] = 0
            require ext_code.size(address(cd[((96 * ('cd', 68).length) + cd[68] - 28)]))
            call address(cd[((96 * ('cd', 68).length) + cd[68] - 28)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _1463, _1476, address(this.address), Array(len=mem[_1480], data=mem[_1480 + 196 len ceil32(mem[_1480])])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if cd[100]:
        return 0
    if 0 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require ('cd', 68)[0] == address(('cd', 68)[0])
    require ext_code.size(address(('cd', 68)[0]))
    staticcall address(('cd', 68)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 0 < cd[36]:
        revert with 'NH{q', 17
    if -cd[36] <= 0:
        revert with 0, 'PGA:failed'
    return -cd[36]
}

function sub_b237fda7(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    if not ('cd', 4).length:
        if ('cd', 4).length > test266151307():
            revert with 'NH{q', 65
        mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
        if not ('cd', 4).length:
            if ('cd', 4).length > test266151307():
                revert with 'NH{q', 65
            mem[(64 * ('cd', 4).length) + 160] = ('cd', 4).length
            if not ('cd', 4).length:
                if ('cd', 4).length > test266151307():
                    revert with 'NH{q', 65
                mem[(98 * ('cd', 4).length) + 192] = ('cd', 4).length
                mem[64] = (131 * ('cd', 4).length) + 224
                if not ('cd', 4).length:
                    idx = 0
                    while idx < ('cd', 4).length:
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _560 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_560] == mem[_560 + 12 len 20]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = mem[_560 + 12 len 20]
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _721 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_721] == mem[_721 + 12 len 20]
                        if idx >= mem[(32 * ('cd', 4).length) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = mem[_721 + 12 len 20]
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _816 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _832 = mem[_816]
                        require mem[_816] == mem[_816 + 18 len 14]
                        require mem[_816 + 32] == mem[_816 + 50 len 14]
                        require mem[_816 + 64] == mem[_816 + 92 len 4]
                        if idx >= mem[(64 * ('cd', 4).length) + 160]:
                            revert with 'NH{q', 50
                        if idx >= mem[(98 * ('cd', 4).length) + 192]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = mem[_816 + 50 len 14]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = Mask(112, 0, _832)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _464 = mem[64]
                    mem[mem[64]] = 128
                    _480 = mem[96]
                    mem[mem[64] + 128] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 160
                    while idx < _480:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_464 + 32] = (32 * _480) + 160
                    _928 = mem[(32 * ('cd', 4).length) + 128]
                    mem[_464 + (32 * _480) + 160] = mem[(32 * ('cd', 4).length) + 128]
                    idx = 0
                    s = (32 * ('cd', 4).length) + 160
                    t = _464 + (32 * _480) + 192
                    while idx < _928:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_464 + 64] = (32 * _480) + (32 * _928) + 192
                    _1056 = mem[(64 * ('cd', 4).length) + 160]
                    mem[_464 + (32 * _480) + (32 * _928) + 192] = mem[(64 * ('cd', 4).length) + 160]
                    mem[_464 + (32 * _480) + (32 * _928) + 224 len 32 * _1056] = mem[(64 * ('cd', 4).length) + 192 len 32 * _1056]
                    mem[_464 + 96] = (32 * _480) + (32 * _928) + (32 * _1056) + 224
                    _1152 = mem[(98 * ('cd', 4).length) + 192]
                    mem[_464 + (32 * _480) + (32 * _928) + (32 * _1056) + 224] = mem[(98 * ('cd', 4).length) + 192]
                    mem[_464 + (32 * _480) + (32 * _928) + (32 * _1056) + 256 len 32 * _1152] = mem[(98 * ('cd', 4).length) + 224 len 32 * _1152]
                    return memory
                      from mem[64]
                       len _464 + (32 * _480) + (32 * _928) + (32 * _1056) + (32 * _1152) + -mem[64] + 256
                mem[(98 * ('cd', 4).length) + 224 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
                idx = 0
                while idx < ('cd', 4).length:
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _561 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_561] == mem[_561 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = mem[_561 + 12 len 20]
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _723 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_723] == mem[_723 + 12 len 20]
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = mem[_723 + 12 len 20]
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _817 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _833 = mem[_817]
                    require mem[_817] == mem[_817 + 18 len 14]
                    require mem[_817 + 32] == mem[_817 + 50 len 14]
                    require mem[_817 + 64] == mem[_817 + 92 len 4]
                    if idx >= mem[(64 * ('cd', 4).length) + 160]:
                        revert with 'NH{q', 50
                    if idx >= mem[(98 * ('cd', 4).length) + 192]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = mem[_817 + 50 len 14]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = Mask(112, 0, _833)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _465 = mem[64]
                mem[mem[64]] = 128
                _481 = mem[96]
                mem[mem[64] + 128] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 160
                while idx < _481:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_465 + 32] = (32 * _481) + 160
                _929 = mem[(32 * ('cd', 4).length) + 128]
                mem[_465 + (32 * _481) + 160] = mem[(32 * ('cd', 4).length) + 128]
                idx = 0
                s = (32 * ('cd', 4).length) + 160
                t = _465 + (32 * _481) + 192
                while idx < _929:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_465 + 64] = (32 * _481) + (32 * _929) + 192
                _1057 = mem[(64 * ('cd', 4).length) + 160]
                mem[_465 + (32 * _481) + (32 * _929) + 192] = mem[(64 * ('cd', 4).length) + 160]
                mem[_465 + (32 * _481) + (32 * _929) + 224 len 32 * _1057] = mem[(64 * ('cd', 4).length) + 192 len 32 * _1057]
                mem[_465 + 96] = (32 * _481) + (32 * _929) + (32 * _1057) + 224
                _1153 = mem[(98 * ('cd', 4).length) + 192]
                mem[_465 + (32 * _481) + (32 * _929) + (32 * _1057) + 224] = mem[(98 * ('cd', 4).length) + 192]
                mem[_465 + (32 * _481) + (32 * _929) + (32 * _1057) + 256 len 32 * _1153] = mem[(98 * ('cd', 4).length) + 224 len 32 * _1153]
                return memory
                  from mem[64]
                   len _465 + (32 * _481) + (32 * _929) + (32 * _1057) + (32 * _1153) + -mem[64] + 256
            mem[(64 * ('cd', 4).length) + 192 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            if ('cd', 4).length > test266151307():
                revert with 'NH{q', 65
            mem[(98 * ('cd', 4).length) + 192] = ('cd', 4).length
            mem[64] = (131 * ('cd', 4).length) + 224
            if not ('cd', 4).length:
                idx = 0
                while idx < ('cd', 4).length:
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _562 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_562] == mem[_562 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = mem[_562 + 12 len 20]
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _725 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_725] == mem[_725 + 12 len 20]
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = mem[_725 + 12 len 20]
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _818 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _834 = mem[_818]
                    require mem[_818] == mem[_818 + 18 len 14]
                    require mem[_818 + 32] == mem[_818 + 50 len 14]
                    require mem[_818 + 64] == mem[_818 + 92 len 4]
                    if idx >= mem[(64 * ('cd', 4).length) + 160]:
                        revert with 'NH{q', 50
                    if idx >= mem[(98 * ('cd', 4).length) + 192]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = mem[_818 + 50 len 14]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = Mask(112, 0, _834)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _466 = mem[64]
                mem[mem[64]] = 128
                _482 = mem[96]
                mem[mem[64] + 128] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 160
                while idx < _482:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_466 + 32] = (32 * _482) + 160
                _930 = mem[(32 * ('cd', 4).length) + 128]
                mem[_466 + (32 * _482) + 160] = mem[(32 * ('cd', 4).length) + 128]
                idx = 0
                s = (32 * ('cd', 4).length) + 160
                t = _466 + (32 * _482) + 192
                while idx < _930:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_466 + 64] = (32 * _482) + (32 * _930) + 192
                _1058 = mem[(64 * ('cd', 4).length) + 160]
                mem[_466 + (32 * _482) + (32 * _930) + 192] = mem[(64 * ('cd', 4).length) + 160]
                mem[_466 + (32 * _482) + (32 * _930) + 224 len 32 * _1058] = mem[(64 * ('cd', 4).length) + 192 len 32 * _1058]
                mem[_466 + 96] = (32 * _482) + (32 * _930) + (32 * _1058) + 224
                _1154 = mem[(98 * ('cd', 4).length) + 192]
                mem[_466 + (32 * _482) + (32 * _930) + (32 * _1058) + 224] = mem[(98 * ('cd', 4).length) + 192]
                mem[_466 + (32 * _482) + (32 * _930) + (32 * _1058) + 256 len 32 * _1154] = mem[(98 * ('cd', 4).length) + 224 len 32 * _1154]
                return memory
                  from mem[64]
                   len _466 + (32 * _482) + (32 * _930) + (32 * _1058) + (32 * _1154) + -mem[64] + 256
            mem[(98 * ('cd', 4).length) + 224 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            idx = 0
            while idx < ('cd', 4).length:
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _563 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_563] == mem[_563 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = mem[_563 + 12 len 20]
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _727 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_727] == mem[_727 + 12 len 20]
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = mem[_727 + 12 len 20]
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _819 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _835 = mem[_819]
                require mem[_819] == mem[_819 + 18 len 14]
                require mem[_819 + 32] == mem[_819 + 50 len 14]
                require mem[_819 + 64] == mem[_819 + 92 len 4]
                if idx >= mem[(64 * ('cd', 4).length) + 160]:
                    revert with 'NH{q', 50
                if idx >= mem[(98 * ('cd', 4).length) + 192]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = mem[_819 + 50 len 14]
                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = Mask(112, 0, _835)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _467 = mem[64]
            mem[mem[64]] = 128
            _483 = mem[96]
            mem[mem[64] + 128] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 160
            while idx < _483:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_467 + 32] = (32 * _483) + 160
            _931 = mem[(32 * ('cd', 4).length) + 128]
            mem[_467 + (32 * _483) + 160] = mem[(32 * ('cd', 4).length) + 128]
            idx = 0
            s = (32 * ('cd', 4).length) + 160
            t = _467 + (32 * _483) + 192
            while idx < _931:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_467 + 64] = (32 * _483) + (32 * _931) + 192
            _1059 = mem[(64 * ('cd', 4).length) + 160]
            mem[_467 + (32 * _483) + (32 * _931) + 192] = mem[(64 * ('cd', 4).length) + 160]
            mem[_467 + (32 * _483) + (32 * _931) + 224 len 32 * _1059] = mem[(64 * ('cd', 4).length) + 192 len 32 * _1059]
            mem[_467 + 96] = (32 * _483) + (32 * _931) + (32 * _1059) + 224
            _1155 = mem[(98 * ('cd', 4).length) + 192]
            mem[_467 + (32 * _483) + (32 * _931) + (32 * _1059) + 224] = mem[(98 * ('cd', 4).length) + 192]
            mem[_467 + (32 * _483) + (32 * _931) + (32 * _1059) + 256 len 32 * _1155] = mem[(98 * ('cd', 4).length) + 224 len 32 * _1155]
            return memory
              from mem[64]
               len _467 + (32 * _483) + (32 * _931) + (32 * _1059) + (32 * _1155) + -mem[64] + 256
        mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        if ('cd', 4).length > test266151307():
            revert with 'NH{q', 65
        mem[(64 * ('cd', 4).length) + 160] = ('cd', 4).length
        if not ('cd', 4).length:
            if ('cd', 4).length > test266151307():
                revert with 'NH{q', 65
            mem[(98 * ('cd', 4).length) + 192] = ('cd', 4).length
            mem[64] = (131 * ('cd', 4).length) + 224
            if not ('cd', 4).length:
                idx = 0
                while idx < ('cd', 4).length:
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _564 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_564] == mem[_564 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = mem[_564 + 12 len 20]
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _729 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_729] == mem[_729 + 12 len 20]
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = mem[_729 + 12 len 20]
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _820 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _836 = mem[_820]
                    require mem[_820] == mem[_820 + 18 len 14]
                    require mem[_820 + 32] == mem[_820 + 50 len 14]
                    require mem[_820 + 64] == mem[_820 + 92 len 4]
                    if idx >= mem[(64 * ('cd', 4).length) + 160]:
                        revert with 'NH{q', 50
                    if idx >= mem[(98 * ('cd', 4).length) + 192]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = mem[_820 + 50 len 14]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = Mask(112, 0, _836)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _468 = mem[64]
                mem[mem[64]] = 128
                _484 = mem[96]
                mem[mem[64] + 128] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 160
                while idx < _484:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_468 + 32] = (32 * _484) + 160
                _932 = mem[(32 * ('cd', 4).length) + 128]
                mem[_468 + (32 * _484) + 160] = mem[(32 * ('cd', 4).length) + 128]
                idx = 0
                s = (32 * ('cd', 4).length) + 160
                t = _468 + (32 * _484) + 192
                while idx < _932:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_468 + 64] = (32 * _484) + (32 * _932) + 192
                _1060 = mem[(64 * ('cd', 4).length) + 160]
                mem[_468 + (32 * _484) + (32 * _932) + 192] = mem[(64 * ('cd', 4).length) + 160]
                mem[_468 + (32 * _484) + (32 * _932) + 224 len 32 * _1060] = mem[(64 * ('cd', 4).length) + 192 len 32 * _1060]
                mem[_468 + 96] = (32 * _484) + (32 * _932) + (32 * _1060) + 224
                _1156 = mem[(98 * ('cd', 4).length) + 192]
                mem[_468 + (32 * _484) + (32 * _932) + (32 * _1060) + 224] = mem[(98 * ('cd', 4).length) + 192]
                mem[_468 + (32 * _484) + (32 * _932) + (32 * _1060) + 256 len 32 * _1156] = mem[(98 * ('cd', 4).length) + 224 len 32 * _1156]
                return memory
                  from mem[64]
                   len _468 + (32 * _484) + (32 * _932) + (32 * _1060) + (32 * _1156) + -mem[64] + 256
            mem[(98 * ('cd', 4).length) + 224 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            idx = 0
            while idx < ('cd', 4).length:
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _565 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_565] == mem[_565 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = mem[_565 + 12 len 20]
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _731 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_731] == mem[_731 + 12 len 20]
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = mem[_731 + 12 len 20]
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _821 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _837 = mem[_821]
                require mem[_821] == mem[_821 + 18 len 14]
                require mem[_821 + 32] == mem[_821 + 50 len 14]
                require mem[_821 + 64] == mem[_821 + 92 len 4]
                if idx >= mem[(64 * ('cd', 4).length) + 160]:
                    revert with 'NH{q', 50
                if idx >= mem[(98 * ('cd', 4).length) + 192]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = mem[_821 + 50 len 14]
                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = Mask(112, 0, _837)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _469 = mem[64]
            mem[mem[64]] = 128
            _485 = mem[96]
            mem[mem[64] + 128] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 160
            while idx < _485:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_469 + 32] = (32 * _485) + 160
            _933 = mem[(32 * ('cd', 4).length) + 128]
            mem[_469 + (32 * _485) + 160] = mem[(32 * ('cd', 4).length) + 128]
            idx = 0
            s = (32 * ('cd', 4).length) + 160
            t = _469 + (32 * _485) + 192
            while idx < _933:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_469 + 64] = (32 * _485) + (32 * _933) + 192
            _1061 = mem[(64 * ('cd', 4).length) + 160]
            mem[_469 + (32 * _485) + (32 * _933) + 192] = mem[(64 * ('cd', 4).length) + 160]
            mem[_469 + (32 * _485) + (32 * _933) + 224 len 32 * _1061] = mem[(64 * ('cd', 4).length) + 192 len 32 * _1061]
            mem[_469 + 96] = (32 * _485) + (32 * _933) + (32 * _1061) + 224
            _1157 = mem[(98 * ('cd', 4).length) + 192]
            mem[_469 + (32 * _485) + (32 * _933) + (32 * _1061) + 224] = mem[(98 * ('cd', 4).length) + 192]
            mem[_469 + (32 * _485) + (32 * _933) + (32 * _1061) + 256 len 32 * _1157] = mem[(98 * ('cd', 4).length) + 224 len 32 * _1157]
            return memory
              from mem[64]
               len _469 + (32 * _485) + (32 * _933) + (32 * _1061) + (32 * _1157) + -mem[64] + 256
        mem[(64 * ('cd', 4).length) + 192 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        if ('cd', 4).length > test266151307():
            revert with 'NH{q', 65
        mem[(98 * ('cd', 4).length) + 192] = ('cd', 4).length
        mem[64] = (131 * ('cd', 4).length) + 224
        if not ('cd', 4).length:
            idx = 0
            while idx < ('cd', 4).length:
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _566 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_566] == mem[_566 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = mem[_566 + 12 len 20]
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _733 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_733] == mem[_733 + 12 len 20]
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = mem[_733 + 12 len 20]
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _822 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _838 = mem[_822]
                require mem[_822] == mem[_822 + 18 len 14]
                require mem[_822 + 32] == mem[_822 + 50 len 14]
                require mem[_822 + 64] == mem[_822 + 92 len 4]
                if idx >= mem[(64 * ('cd', 4).length) + 160]:
                    revert with 'NH{q', 50
                if idx >= mem[(98 * ('cd', 4).length) + 192]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = mem[_822 + 50 len 14]
                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = Mask(112, 0, _838)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _470 = mem[64]
            mem[mem[64]] = 128
            _486 = mem[96]
            mem[mem[64] + 128] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 160
            while idx < _486:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_470 + 32] = (32 * _486) + 160
            _934 = mem[(32 * ('cd', 4).length) + 128]
            mem[_470 + (32 * _486) + 160] = mem[(32 * ('cd', 4).length) + 128]
            idx = 0
            s = (32 * ('cd', 4).length) + 160
            t = _470 + (32 * _486) + 192
            while idx < _934:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_470 + 64] = (32 * _486) + (32 * _934) + 192
            _1062 = mem[(64 * ('cd', 4).length) + 160]
            mem[_470 + (32 * _486) + (32 * _934) + 192] = mem[(64 * ('cd', 4).length) + 160]
            mem[_470 + (32 * _486) + (32 * _934) + 224 len 32 * _1062] = mem[(64 * ('cd', 4).length) + 192 len 32 * _1062]
            mem[_470 + 96] = (32 * _486) + (32 * _934) + (32 * _1062) + 224
            _1158 = mem[(98 * ('cd', 4).length) + 192]
            mem[_470 + (32 * _486) + (32 * _934) + (32 * _1062) + 224] = mem[(98 * ('cd', 4).length) + 192]
            mem[_470 + (32 * _486) + (32 * _934) + (32 * _1062) + 256 len 32 * _1158] = mem[(98 * ('cd', 4).length) + 224 len 32 * _1158]
            return memory
              from mem[64]
               len _470 + (32 * _486) + (32 * _934) + (32 * _1062) + (32 * _1158) + -mem[64] + 256
        mem[(98 * ('cd', 4).length) + 224 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _567 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_567] == mem[_567 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = mem[_567 + 12 len 20]
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _735 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_735] == mem[_735 + 12 len 20]
            if idx >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = mem[_735 + 12 len 20]
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _823 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _839 = mem[_823]
            require mem[_823] == mem[_823 + 18 len 14]
            require mem[_823 + 32] == mem[_823 + 50 len 14]
            require mem[_823 + 64] == mem[_823 + 92 len 4]
            if idx >= mem[(64 * ('cd', 4).length) + 160]:
                revert with 'NH{q', 50
            if idx >= mem[(98 * ('cd', 4).length) + 192]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = mem[_823 + 50 len 14]
            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = Mask(112, 0, _839)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _471 = mem[64]
        mem[mem[64]] = 128
        _487 = mem[96]
        mem[mem[64] + 128] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 160
        while idx < _487:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_471 + 32] = (32 * _487) + 160
        _935 = mem[(32 * ('cd', 4).length) + 128]
        mem[_471 + (32 * _487) + 160] = mem[(32 * ('cd', 4).length) + 128]
        idx = 0
        s = (32 * ('cd', 4).length) + 160
        t = _471 + (32 * _487) + 192
        while idx < _935:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_471 + 64] = (32 * _487) + (32 * _935) + 192
        _1063 = mem[(64 * ('cd', 4).length) + 160]
        mem[_471 + (32 * _487) + (32 * _935) + 192] = mem[(64 * ('cd', 4).length) + 160]
        mem[_471 + (32 * _487) + (32 * _935) + 224 len 32 * _1063] = mem[(64 * ('cd', 4).length) + 192 len 32 * _1063]
        mem[_471 + 96] = (32 * _487) + (32 * _935) + (32 * _1063) + 224
        _1159 = mem[(98 * ('cd', 4).length) + 192]
        mem[_471 + (32 * _487) + (32 * _935) + (32 * _1063) + 224] = mem[(98 * ('cd', 4).length) + 192]
        mem[_471 + (32 * _487) + (32 * _935) + (32 * _1063) + 256 len 32 * _1159] = mem[(98 * ('cd', 4).length) + 224 len 32 * _1159]
        return memory
          from mem[64]
           len _471 + (32 * _487) + (32 * _935) + (32 * _1063) + (32 * _1159) + -mem[64] + 256
    mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
    if not ('cd', 4).length:
        if ('cd', 4).length > test266151307():
            revert with 'NH{q', 65
        mem[(64 * ('cd', 4).length) + 160] = ('cd', 4).length
        if not ('cd', 4).length:
            if ('cd', 4).length > test266151307():
                revert with 'NH{q', 65
            mem[(98 * ('cd', 4).length) + 192] = ('cd', 4).length
            mem[64] = (131 * ('cd', 4).length) + 224
            if not ('cd', 4).length:
                idx = 0
                while idx < ('cd', 4).length:
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _568 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_568] == mem[_568 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = mem[_568 + 12 len 20]
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _737 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_737] == mem[_737 + 12 len 20]
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = mem[_737 + 12 len 20]
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _824 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _840 = mem[_824]
                    require mem[_824] == mem[_824 + 18 len 14]
                    require mem[_824 + 32] == mem[_824 + 50 len 14]
                    require mem[_824 + 64] == mem[_824 + 92 len 4]
                    if idx >= mem[(64 * ('cd', 4).length) + 160]:
                        revert with 'NH{q', 50
                    if idx >= mem[(98 * ('cd', 4).length) + 192]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = mem[_824 + 50 len 14]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = Mask(112, 0, _840)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _472 = mem[64]
                mem[mem[64]] = 128
                _488 = mem[96]
                mem[mem[64] + 128] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 160
                while idx < _488:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_472 + 32] = (32 * _488) + 160
                _936 = mem[(32 * ('cd', 4).length) + 128]
                mem[_472 + (32 * _488) + 160] = mem[(32 * ('cd', 4).length) + 128]
                idx = 0
                s = (32 * ('cd', 4).length) + 160
                t = _472 + (32 * _488) + 192
                while idx < _936:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_472 + 64] = (32 * _488) + (32 * _936) + 192
                _1064 = mem[(64 * ('cd', 4).length) + 160]
                mem[_472 + (32 * _488) + (32 * _936) + 192] = mem[(64 * ('cd', 4).length) + 160]
                mem[_472 + (32 * _488) + (32 * _936) + 224 len 32 * _1064] = mem[(64 * ('cd', 4).length) + 192 len 32 * _1064]
                mem[_472 + 96] = (32 * _488) + (32 * _936) + (32 * _1064) + 224
                _1160 = mem[(98 * ('cd', 4).length) + 192]
                mem[_472 + (32 * _488) + (32 * _936) + (32 * _1064) + 224] = mem[(98 * ('cd', 4).length) + 192]
                mem[_472 + (32 * _488) + (32 * _936) + (32 * _1064) + 256 len 32 * _1160] = mem[(98 * ('cd', 4).length) + 224 len 32 * _1160]
                return memory
                  from mem[64]
                   len _472 + (32 * _488) + (32 * _936) + (32 * _1064) + (32 * _1160) + -mem[64] + 256
            mem[(98 * ('cd', 4).length) + 224 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            idx = 0
            while idx < ('cd', 4).length:
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _569 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_569] == mem[_569 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = mem[_569 + 12 len 20]
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _739 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_739] == mem[_739 + 12 len 20]
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = mem[_739 + 12 len 20]
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _825 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _841 = mem[_825]
                require mem[_825] == mem[_825 + 18 len 14]
                require mem[_825 + 32] == mem[_825 + 50 len 14]
                require mem[_825 + 64] == mem[_825 + 92 len 4]
                if idx >= mem[(64 * ('cd', 4).length) + 160]:
                    revert with 'NH{q', 50
                if idx >= mem[(98 * ('cd', 4).length) + 192]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = mem[_825 + 50 len 14]
                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = Mask(112, 0, _841)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _473 = mem[64]
            mem[mem[64]] = 128
            _489 = mem[96]
            mem[mem[64] + 128] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 160
            while idx < _489:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_473 + 32] = (32 * _489) + 160
            _937 = mem[(32 * ('cd', 4).length) + 128]
            mem[_473 + (32 * _489) + 160] = mem[(32 * ('cd', 4).length) + 128]
            idx = 0
            s = (32 * ('cd', 4).length) + 160
            t = _473 + (32 * _489) + 192
            while idx < _937:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_473 + 64] = (32 * _489) + (32 * _937) + 192
            _1065 = mem[(64 * ('cd', 4).length) + 160]
            mem[_473 + (32 * _489) + (32 * _937) + 192] = mem[(64 * ('cd', 4).length) + 160]
            mem[_473 + (32 * _489) + (32 * _937) + 224 len 32 * _1065] = mem[(64 * ('cd', 4).length) + 192 len 32 * _1065]
            mem[_473 + 96] = (32 * _489) + (32 * _937) + (32 * _1065) + 224
            _1161 = mem[(98 * ('cd', 4).length) + 192]
            mem[_473 + (32 * _489) + (32 * _937) + (32 * _1065) + 224] = mem[(98 * ('cd', 4).length) + 192]
            mem[_473 + (32 * _489) + (32 * _937) + (32 * _1065) + 256 len 32 * _1161] = mem[(98 * ('cd', 4).length) + 224 len 32 * _1161]
            return memory
              from mem[64]
               len _473 + (32 * _489) + (32 * _937) + (32 * _1065) + (32 * _1161) + -mem[64] + 256
        mem[(64 * ('cd', 4).length) + 192 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        if ('cd', 4).length > test266151307():
            revert with 'NH{q', 65
        mem[(98 * ('cd', 4).length) + 192] = ('cd', 4).length
        mem[64] = (131 * ('cd', 4).length) + 224
        if not ('cd', 4).length:
            idx = 0
            while idx < ('cd', 4).length:
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _570 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_570] == mem[_570 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = mem[_570 + 12 len 20]
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _741 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_741] == mem[_741 + 12 len 20]
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = mem[_741 + 12 len 20]
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _826 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _842 = mem[_826]
                require mem[_826] == mem[_826 + 18 len 14]
                require mem[_826 + 32] == mem[_826 + 50 len 14]
                require mem[_826 + 64] == mem[_826 + 92 len 4]
                if idx >= mem[(64 * ('cd', 4).length) + 160]:
                    revert with 'NH{q', 50
                if idx >= mem[(98 * ('cd', 4).length) + 192]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = mem[_826 + 50 len 14]
                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = Mask(112, 0, _842)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _474 = mem[64]
            mem[mem[64]] = 128
            _490 = mem[96]
            mem[mem[64] + 128] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 160
            while idx < _490:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_474 + 32] = (32 * _490) + 160
            _938 = mem[(32 * ('cd', 4).length) + 128]
            mem[_474 + (32 * _490) + 160] = mem[(32 * ('cd', 4).length) + 128]
            idx = 0
            s = (32 * ('cd', 4).length) + 160
            t = _474 + (32 * _490) + 192
            while idx < _938:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_474 + 64] = (32 * _490) + (32 * _938) + 192
            _1066 = mem[(64 * ('cd', 4).length) + 160]
            mem[_474 + (32 * _490) + (32 * _938) + 192] = mem[(64 * ('cd', 4).length) + 160]
            mem[_474 + (32 * _490) + (32 * _938) + 224 len 32 * _1066] = mem[(64 * ('cd', 4).length) + 192 len 32 * _1066]
            mem[_474 + 96] = (32 * _490) + (32 * _938) + (32 * _1066) + 224
            _1162 = mem[(98 * ('cd', 4).length) + 192]
            mem[_474 + (32 * _490) + (32 * _938) + (32 * _1066) + 224] = mem[(98 * ('cd', 4).length) + 192]
            mem[_474 + (32 * _490) + (32 * _938) + (32 * _1066) + 256 len 32 * _1162] = mem[(98 * ('cd', 4).length) + 224 len 32 * _1162]
            return memory
              from mem[64]
               len _474 + (32 * _490) + (32 * _938) + (32 * _1066) + (32 * _1162) + -mem[64] + 256
        mem[(98 * ('cd', 4).length) + 224 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _571 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_571] == mem[_571 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = mem[_571 + 12 len 20]
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _743 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_743] == mem[_743 + 12 len 20]
            if idx >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = mem[_743 + 12 len 20]
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _827 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _843 = mem[_827]
            require mem[_827] == mem[_827 + 18 len 14]
            require mem[_827 + 32] == mem[_827 + 50 len 14]
            require mem[_827 + 64] == mem[_827 + 92 len 4]
            if idx >= mem[(64 * ('cd', 4).length) + 160]:
                revert with 'NH{q', 50
            if idx >= mem[(98 * ('cd', 4).length) + 192]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = mem[_827 + 50 len 14]
            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = Mask(112, 0, _843)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _475 = mem[64]
        mem[mem[64]] = 128
        _491 = mem[96]
        mem[mem[64] + 128] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 160
        while idx < _491:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_475 + 32] = (32 * _491) + 160
        _939 = mem[(32 * ('cd', 4).length) + 128]
        mem[_475 + (32 * _491) + 160] = mem[(32 * ('cd', 4).length) + 128]
        idx = 0
        s = (32 * ('cd', 4).length) + 160
        t = _475 + (32 * _491) + 192
        while idx < _939:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_475 + 64] = (32 * _491) + (32 * _939) + 192
        _1067 = mem[(64 * ('cd', 4).length) + 160]
        mem[_475 + (32 * _491) + (32 * _939) + 192] = mem[(64 * ('cd', 4).length) + 160]
        mem[_475 + (32 * _491) + (32 * _939) + 224 len 32 * _1067] = mem[(64 * ('cd', 4).length) + 192 len 32 * _1067]
        mem[_475 + 96] = (32 * _491) + (32 * _939) + (32 * _1067) + 224
        _1163 = mem[(98 * ('cd', 4).length) + 192]
        mem[_475 + (32 * _491) + (32 * _939) + (32 * _1067) + 224] = mem[(98 * ('cd', 4).length) + 192]
        mem[_475 + (32 * _491) + (32 * _939) + (32 * _1067) + 256 len 32 * _1163] = mem[(98 * ('cd', 4).length) + 224 len 32 * _1163]
        return memory
          from mem[64]
           len _475 + (32 * _491) + (32 * _939) + (32 * _1067) + (32 * _1163) + -mem[64] + 256
    mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[(64 * ('cd', 4).length) + 160] = ('cd', 4).length
    if not ('cd', 4).length:
        if ('cd', 4).length > test266151307():
            revert with 'NH{q', 65
        mem[(98 * ('cd', 4).length) + 192] = ('cd', 4).length
        mem[64] = (131 * ('cd', 4).length) + 224
        if not ('cd', 4).length:
            idx = 0
            while idx < ('cd', 4).length:
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _572 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_572] == mem[_572 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = mem[_572 + 12 len 20]
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _745 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_745] == mem[_745 + 12 len 20]
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = mem[_745 + 12 len 20]
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _828 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _844 = mem[_828]
                require mem[_828] == mem[_828 + 18 len 14]
                require mem[_828 + 32] == mem[_828 + 50 len 14]
                require mem[_828 + 64] == mem[_828 + 92 len 4]
                if idx >= mem[(64 * ('cd', 4).length) + 160]:
                    revert with 'NH{q', 50
                if idx >= mem[(98 * ('cd', 4).length) + 192]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = mem[_828 + 50 len 14]
                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = Mask(112, 0, _844)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _476 = mem[64]
            mem[mem[64]] = 128
            _492 = mem[96]
            mem[mem[64] + 128] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 160
            while idx < _492:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_476 + 32] = (32 * _492) + 160
            _940 = mem[(32 * ('cd', 4).length) + 128]
            mem[_476 + (32 * _492) + 160] = mem[(32 * ('cd', 4).length) + 128]
            idx = 0
            s = (32 * ('cd', 4).length) + 160
            t = _476 + (32 * _492) + 192
            while idx < _940:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_476 + 64] = (32 * _492) + (32 * _940) + 192
            _1068 = mem[(64 * ('cd', 4).length) + 160]
            mem[_476 + (32 * _492) + (32 * _940) + 192] = mem[(64 * ('cd', 4).length) + 160]
            mem[_476 + (32 * _492) + (32 * _940) + 224 len 32 * _1068] = mem[(64 * ('cd', 4).length) + 192 len 32 * _1068]
            mem[_476 + 96] = (32 * _492) + (32 * _940) + (32 * _1068) + 224
            _1164 = mem[(98 * ('cd', 4).length) + 192]
            mem[_476 + (32 * _492) + (32 * _940) + (32 * _1068) + 224] = mem[(98 * ('cd', 4).length) + 192]
            mem[_476 + (32 * _492) + (32 * _940) + (32 * _1068) + 256 len 32 * _1164] = mem[(98 * ('cd', 4).length) + 224 len 32 * _1164]
            return memory
              from mem[64]
               len _476 + (32 * _492) + (32 * _940) + (32 * _1068) + (32 * _1164) + -mem[64] + 256
        mem[(98 * ('cd', 4).length) + 224 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _573 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_573] == mem[_573 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = mem[_573 + 12 len 20]
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _747 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_747] == mem[_747 + 12 len 20]
            if idx >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = mem[_747 + 12 len 20]
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _829 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _845 = mem[_829]
            require mem[_829] == mem[_829 + 18 len 14]
            require mem[_829 + 32] == mem[_829 + 50 len 14]
            require mem[_829 + 64] == mem[_829 + 92 len 4]
            if idx >= mem[(64 * ('cd', 4).length) + 160]:
                revert with 'NH{q', 50
            if idx >= mem[(98 * ('cd', 4).length) + 192]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = mem[_829 + 50 len 14]
            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = Mask(112, 0, _845)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _477 = mem[64]
        mem[mem[64]] = 128
        _493 = mem[96]
        mem[mem[64] + 128] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 160
        while idx < _493:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_477 + 32] = (32 * _493) + 160
        _941 = mem[(32 * ('cd', 4).length) + 128]
        mem[_477 + (32 * _493) + 160] = mem[(32 * ('cd', 4).length) + 128]
        idx = 0
        s = (32 * ('cd', 4).length) + 160
        t = _477 + (32 * _493) + 192
        while idx < _941:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_477 + 64] = (32 * _493) + (32 * _941) + 192
        _1069 = mem[(64 * ('cd', 4).length) + 160]
        mem[_477 + (32 * _493) + (32 * _941) + 192] = mem[(64 * ('cd', 4).length) + 160]
        mem[_477 + (32 * _493) + (32 * _941) + 224 len 32 * _1069] = mem[(64 * ('cd', 4).length) + 192 len 32 * _1069]
        mem[_477 + 96] = (32 * _493) + (32 * _941) + (32 * _1069) + 224
        _1165 = mem[(98 * ('cd', 4).length) + 192]
        mem[_477 + (32 * _493) + (32 * _941) + (32 * _1069) + 224] = mem[(98 * ('cd', 4).length) + 192]
        mem[_477 + (32 * _493) + (32 * _941) + (32 * _1069) + 256 len 32 * _1165] = mem[(98 * ('cd', 4).length) + 224 len 32 * _1165]
        return memory
          from mem[64]
           len _477 + (32 * _493) + (32 * _941) + (32 * _1069) + (32 * _1165) + -mem[64] + 256
    mem[(64 * ('cd', 4).length) + 192 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[(98 * ('cd', 4).length) + 192] = ('cd', 4).length
    mem[64] = (131 * ('cd', 4).length) + 224
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _574 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_574] == mem[_574 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = mem[_574 + 12 len 20]
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _749 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_749] == mem[_749 + 12 len 20]
            if idx >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = mem[_749 + 12 len 20]
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _830 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _846 = mem[_830]
            require mem[_830] == mem[_830 + 18 len 14]
            require mem[_830 + 32] == mem[_830 + 50 len 14]
            require mem[_830 + 64] == mem[_830 + 92 len 4]
            if idx >= mem[(64 * ('cd', 4).length) + 160]:
                revert with 'NH{q', 50
            if idx >= mem[(98 * ('cd', 4).length) + 192]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = mem[_830 + 50 len 14]
            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = Mask(112, 0, _846)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _478 = mem[64]
        mem[mem[64]] = 128
        _494 = mem[96]
        mem[mem[64] + 128] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 160
        while idx < _494:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_478 + 32] = (32 * _494) + 160
        _942 = mem[(32 * ('cd', 4).length) + 128]
        mem[_478 + (32 * _494) + 160] = mem[(32 * ('cd', 4).length) + 128]
        idx = 0
        s = (32 * ('cd', 4).length) + 160
        t = _478 + (32 * _494) + 192
        while idx < _942:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_478 + 64] = (32 * _494) + (32 * _942) + 192
        _1070 = mem[(64 * ('cd', 4).length) + 160]
        mem[_478 + (32 * _494) + (32 * _942) + 192] = mem[(64 * ('cd', 4).length) + 160]
        mem[_478 + (32 * _494) + (32 * _942) + 224 len 32 * _1070] = mem[(64 * ('cd', 4).length) + 192 len 32 * _1070]
        mem[_478 + 96] = (32 * _494) + (32 * _942) + (32 * _1070) + 224
        _1166 = mem[(98 * ('cd', 4).length) + 192]
        mem[_478 + (32 * _494) + (32 * _942) + (32 * _1070) + 224] = mem[(98 * ('cd', 4).length) + 192]
        mem[_478 + (32 * _494) + (32 * _942) + (32 * _1070) + 256 len 32 * _1166] = mem[(98 * ('cd', 4).length) + 224 len 32 * _1166]
        return memory
          from mem[64]
           len _478 + (32 * _494) + (32 * _942) + (32 * _1070) + (32 * _1166) + -mem[64] + 256
    mem[(98 * ('cd', 4).length) + 224 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _575 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_575] == mem[_575 + 12 len 20]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = mem[_575 + 12 len 20]
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _751 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_751] == mem[_751 + 12 len 20]
        if idx >= mem[(32 * ('cd', 4).length) + 128]:
            revert with 'NH{q', 50
        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = mem[_751 + 12 len 20]
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _831 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _847 = mem[_831]
        require mem[_831] == mem[_831 + 18 len 14]
        require mem[_831 + 32] == mem[_831 + 50 len 14]
        require mem[_831 + 64] == mem[_831 + 92 len 4]
        if idx >= mem[(64 * ('cd', 4).length) + 160]:
            revert with 'NH{q', 50
        if idx >= mem[(98 * ('cd', 4).length) + 192]:
            revert with 'NH{q', 50
        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = mem[_831 + 50 len 14]
        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = Mask(112, 0, _847)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _479 = mem[64]
    mem[mem[64]] = 128
    _495 = mem[96]
    mem[mem[64] + 128] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 160
    while idx < _495:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_479 + 32] = (32 * _495) + 160
    _943 = mem[(32 * ('cd', 4).length) + 128]
    mem[_479 + (32 * _495) + 160] = mem[(32 * ('cd', 4).length) + 128]
    idx = 0
    s = (32 * ('cd', 4).length) + 160
    t = _479 + (32 * _495) + 192
    while idx < _943:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_479 + 64] = (32 * _495) + (32 * _943) + 192
    _1071 = mem[(64 * ('cd', 4).length) + 160]
    mem[_479 + (32 * _495) + (32 * _943) + 192] = mem[(64 * ('cd', 4).length) + 160]
    mem[_479 + (32 * _495) + (32 * _943) + 224 len 32 * _1071] = mem[(64 * ('cd', 4).length) + 192 len 32 * _1071]
    mem[_479 + 96] = (32 * _495) + (32 * _943) + (32 * _1071) + 224
    _1167 = mem[(98 * ('cd', 4).length) + 192]
    mem[_479 + (32 * _495) + (32 * _943) + (32 * _1071) + 224] = mem[(98 * ('cd', 4).length) + 192]
    mem[_479 + (32 * _495) + (32 * _943) + (32 * _1071) + 256 len 32 * _1167] = mem[(98 * ('cd', 4).length) + 224 len 32 * _1167]
    return memory
      from mem[64]
       len _479 + (32 * _495) + (32 * _943) + (32 * _1071) + (32 * _1167) + -mem[64] + 256
}



}
