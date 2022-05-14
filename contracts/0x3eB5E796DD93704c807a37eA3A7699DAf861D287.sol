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
        if ('cd', 36).length < 1:
            revert with 'NH{q', 17
        if var202002 >= ('cd', 36).length - 1:
            mem[(64 * ('cd', 36).length) + 128] = 32
            mem[(64 * ('cd', 36).length) + 160] = 2 * ('cd', 36).length
            mem[(64 * ('cd', 36).length) + 192 len 64 * ('cd', 36).length] = mem[128 len 64 * ('cd', 36).length]
            return memory
              from (64 * ('cd', 36).length) + 128
               len (192 * ('cd', 36).length) + 64
        if var204001 >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((96 * var206001) + cd[36] + 100)] == uint8(cd[((96 * var206001) + cd[36] + 100)])
        if uint8(cd[((96 * var206001) + cd[36] + 100)]):
            if var206005 == -1:
                revert with 'NH{q', 17
            if ('cd', 36).length < 1:
                revert with 'NH{q', 17
            if var206005 + 1 < ('cd', 36).length - 1:
                var206001 = var206005 + 1
                var206005 = var206005 + 1
                var206006 = var206006
                continue 
            mem[(64 * ('cd', 36).length) + 128] = 32
            mem[(64 * ('cd', 36).length) + 160] = 2 * ('cd', 36).length
            mem[(64 * ('cd', 36).length) + 192 len 64 * ('cd', 36).length] = mem[128 len 64 * ('cd', 36).length]
            return memory
              from (64 * ('cd', 36).length) + 128
               len (192 * ('cd', 36).length) + 64
        if var206005 >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((96 * var206005) + cd[36] + 36)] == address(cd[((96 * var206005) + cd[36] + 36)])
        if var206005 >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((96 * var206005) + cd[36] + 68)] == address(cd[((96 * var206005) + cd[36] + 68)])
        require ext_code.size(address(cd[((96 * var206005) + cd[36] + 68)]))
        staticcall address(cd[((96 * var206005) + cd[36] + 68)]).token0() with:
                gas gas_remaining wei
        mem[(64 * ('cd', 36).length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if var206005 >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((96 * var206005) + cd[36] + 68)] == address(cd[((96 * var206005) + cd[36] + 68)])
        require ext_code.size(address(cd[((96 * var206005) + cd[36] + 68)]))
        staticcall address(cd[((96 * var206005) + cd[36] + 68)]).getReserves() with:
                gas gas_remaining wei
        mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 128 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (64 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if var206006 and 997 > -1 / var206006:
            revert with 'NH{q', 17
        if ext_call.return_data[12 len 20] != address(cd[((96 * var206005) + cd[36] + 36)]):
            if 997 * var206006 and ext_call.return_data[18 len 14] > -1 / 997 * var206006:
                revert with 'NH{q', 17
            if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            if 1000 * ext_call.return_data[50 len 14] > (-997 * var206006) - 1:
                revert with 'NH{q', 17
            if not (1000 * ext_call.return_data[50 len 14]) + (997 * var206006):
                revert with 'NH{q', 18
            if var206005 and 2 > -1 / var206005:
                revert with 'NH{q', 17
            if 2 * var206005 >= 2 * ('cd', 36).length:
                revert with 'NH{q', 50
            mem[(64 * var206005) + 128] = 997 * var206006 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * var206006)
            if var206005 == -1:
                revert with 'NH{q', 17
            if ('cd', 36).length < 1:
                revert with 'NH{q', 17
            if var206005 + 1 < ('cd', 36).length - 1:
                var206001 = var206005 + 1
                var206005 = var206005 + 1
                var206006 = 997 * var206006 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * var206006)
                continue 
        else:
            if 997 * var206006 and ext_call.return_data[50 len 14] > -1 / 997 * var206006:
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                revert with 'NH{q', 17
            if 1000 * ext_call.return_data[18 len 14] > (-997 * var206006) - 1:
                revert with 'NH{q', 17
            if not (1000 * ext_call.return_data[18 len 14]) + (997 * var206006):
                revert with 'NH{q', 18
            if var206005 and 2 > -1 / var206005:
                revert with 'NH{q', 17
            if 2 * var206005 > -2:
                revert with 'NH{q', 17
            if (2 * var206005) + 1 >= 2 * ('cd', 36).length:
                revert with 'NH{q', 50
            mem[(32 * (2 * var206005) + 1) + 128] = 997 * var206006 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * var206006)
            if var206005 == -1:
                revert with 'NH{q', 17
            if ('cd', 36).length < 1:
                revert with 'NH{q', 17
            if var206005 + 1 < ('cd', 36).length - 1:
                var206001 = var206005 + 1
                var206005 = var206005 + 1
                var206006 = 997 * var206006 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * var206006)
                continue 
        ('ge', ('add', 1, ('var', 206005)), ('add', -1, ('cd', ('add', 4, ('cd', 36)))))
        mem[(64 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 128] = 32
        mem[(64 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 160] = 2 * ('cd', 36).length
        mem[(64 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 192 len 64 * ('cd', 36).length] = mem[128 len 64 * ('cd', 36).length]
    else:
        mem[128 len 64 * ('cd', 36).length] = call.data[calldata.size len 64 * ('cd', 36).length]
        if ('cd', 36).length < 1:
            revert with 'NH{q', 17
        if var203002 >= ('cd', 36).length - 1:
            mem[(64 * ('cd', 36).length) + 128] = 32
            mem[(64 * ('cd', 36).length) + 160] = 2 * ('cd', 36).length
            mem[(64 * ('cd', 36).length) + 192 len 64 * ('cd', 36).length] = call.data[calldata.size len 64 * ('cd', 36).length]
            return memory
              from (64 * ('cd', 36).length) + 128
               len (192 * ('cd', 36).length) + 64
        if var205001 >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((96 * var207001) + cd[36] + 100)] == uint8(cd[((96 * var207001) + cd[36] + 100)])
        if uint8(cd[((96 * var207001) + cd[36] + 100)]):
            if var207005 == -1:
                revert with 'NH{q', 17
            if ('cd', 36).length < 1:
                revert with 'NH{q', 17
            if var207005 + 1 < ('cd', 36).length - 1:
                var207001 = var207005 + 1
                var207005 = var207005 + 1
                var207006 = var207006
                continue 
            mem[(64 * ('cd', 36).length) + 128] = 32
            mem[(64 * ('cd', 36).length) + 160] = 2 * ('cd', 36).length
            mem[(64 * ('cd', 36).length) + 192 len 64 * ('cd', 36).length] = call.data[calldata.size len 64 * ('cd', 36).length]
            return memory
              from (64 * ('cd', 36).length) + 128
               len (192 * ('cd', 36).length) + 64
        if var207005 >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((96 * var207005) + cd[36] + 36)] == address(cd[((96 * var207005) + cd[36] + 36)])
        if var207005 >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((96 * var207005) + cd[36] + 68)] == address(cd[((96 * var207005) + cd[36] + 68)])
        require ext_code.size(address(cd[((96 * var207005) + cd[36] + 68)]))
        staticcall address(cd[((96 * var207005) + cd[36] + 68)]).token0() with:
                gas gas_remaining wei
        mem[(64 * ('cd', 36).length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if var207005 >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((96 * var207005) + cd[36] + 68)] == address(cd[((96 * var207005) + cd[36] + 68)])
        require ext_code.size(address(cd[((96 * var207005) + cd[36] + 68)]))
        staticcall address(cd[((96 * var207005) + cd[36] + 68)]).getReserves() with:
                gas gas_remaining wei
        mem[(64 * ('cd', 36).length) + ceil32(return_data.size) + 128 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (64 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if var207006 and 997 > -1 / var207006:
            revert with 'NH{q', 17
        if ext_call.return_data[12 len 20] != address(cd[((96 * var207005) + cd[36] + 36)]):
            if 997 * var207006 and ext_call.return_data[18 len 14] > -1 / 997 * var207006:
                revert with 'NH{q', 17
            if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            if 1000 * ext_call.return_data[50 len 14] > (-997 * var207006) - 1:
                revert with 'NH{q', 17
            if not (1000 * ext_call.return_data[50 len 14]) + (997 * var207006):
                revert with 'NH{q', 18
            if var207005 and 2 > -1 / var207005:
                revert with 'NH{q', 17
            if 2 * var207005 >= 2 * ('cd', 36).length:
                revert with 'NH{q', 50
            mem[(64 * var207005) + 128] = 997 * var207006 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * var207006)
            if var207005 == -1:
                revert with 'NH{q', 17
            if ('cd', 36).length < 1:
                revert with 'NH{q', 17
            if var207005 + 1 < ('cd', 36).length - 1:
                var207001 = var207005 + 1
                var207005 = var207005 + 1
                var207006 = 997 * var207006 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * var207006)
                continue 
        else:
            if 997 * var207006 and ext_call.return_data[50 len 14] > -1 / 997 * var207006:
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                revert with 'NH{q', 17
            if 1000 * ext_call.return_data[18 len 14] > (-997 * var207006) - 1:
                revert with 'NH{q', 17
            if not (1000 * ext_call.return_data[18 len 14]) + (997 * var207006):
                revert with 'NH{q', 18
            if var207005 and 2 > -1 / var207005:
                revert with 'NH{q', 17
            if 2 * var207005 > -2:
                revert with 'NH{q', 17
            if (2 * var207005) + 1 >= 2 * ('cd', 36).length:
                revert with 'NH{q', 50
            mem[(32 * (2 * var207005) + 1) + 128] = 997 * var207006 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * var207006)
            if var207005 == -1:
                revert with 'NH{q', 17
            if ('cd', 36).length < 1:
                revert with 'NH{q', 17
            if var207005 + 1 < ('cd', 36).length - 1:
                var207001 = var207005 + 1
                var207005 = var207005 + 1
                var207006 = 997 * var207006 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * var207006)
                continue 
        ('ge', ('add', 1, ('var', 207005)), ('add', -1, ('cd', ('add', 4, ('cd', 36)))))
        mem[(64 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 128] = 32
        mem[(64 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 160] = 2 * ('cd', 36).length
        mem[(64 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 192 len 64 * ('cd', 36).length] = call.data[calldata.size len 64 * ('cd', 36).length]
    return memory
      from (64 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 128
       len (192 * ('cd', 36).length) + 64
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
        if ('cd', 68).length < 1:
            revert with 'NH{q', 17
        if var253002 >= ('cd', 68).length - 1:
            if cd[100]:
                if 0 >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require ('cd', 68)[0] == address(('cd', 68)[0])
                if 0 >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require ('cd', 68)[1] == address(('cd', 68)[1])
                mem[ceil32(return_data.size) + (64 * ('cd', 68).length) + 132] = address(('cd', 68)[1])
                mem[ceil32(return_data.size) + (64 * ('cd', 68).length) + 164] = cd[4]
                require ext_code.size(address(('cd', 68)[0]))
                call address(('cd', 68)[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(('cd', 68)[1]), cd[4]
                mem[ceil32(return_data.size) + (64 * ('cd', 68).length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 128
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ('cd', 68).length < 1:
                    revert with 'NH{q', 17
                if var259002 < ('cd', 68).length - 1:
                    if var261001 < ('cd', 68).length:
                        require cd[((96 * var261001) + cd[68] + 68)] == address(cd[((96 * var261001) + cd[68] + 68)])
                        s = var261001
                        t = var261001
                        idx = var261002
                        while idx < 2 * ('cd', 68).length:
                            _7570 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            _7602 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((96 * t) + cd[68] + 164)] == address(cd[((96 * t) + cd[68] + 164)])
                            _7702 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_7702 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_7702 + 36] = _7570
                            mem[_7702 + 68] = _7602
                            mem[_7702 + 100] = address(cd[((96 * t) + cd[68] + 164)])
                            mem[_7702 + 132] = 128
                            mem[_7702 + 164] = mem[_7702]
                            u = 0
                            while u < mem[_7702]:
                                mem[_7702 + u + 196] = mem[_7702 + u + 32]
                                require cd[((96 * s) + cd[68] + 68)] == address(cd[((96 * s) + cd[68] + 68)])
                                u = u + 32
                                continue 
                            if ceil32(mem[_7702]) > mem[_7702]:
                                mem[_7702 + mem[_7702] + 196] = 0
                            require ext_code.size(address(cd[((96 * s) + cd[68] + 68)]))
                            call address(cd[((96 * s) + cd[68] + 68)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _7570, _7602, address(cd[((96 * t) + cd[68] + 164)]), Array(len=mem[_7702], data=mem[_7702 + 196 len ceil32(mem[_7702])])
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
                            if idx + 2 > -2:
                                revert with 'NH{q', 17
                            if idx + 3 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            # nil
                    revert with 'NH{q', 50
                if ('cd', 68).length < 1:
                    revert with 'NH{q', 17
                if ('cd', 68).length - 1 >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((96 * ('cd', 68).length) + cd[68] - 28)] == address(cd[((96 * ('cd', 68).length) + cd[68] - 28)])
                if var259003 >= 2 * ('cd', 68).length:
                    revert with 'NH{q', 50
                _5998 = mem[(32 * var259003) + ceil32(return_data.size) + 128]
                if var259003 > -2:
                    revert with 'NH{q', 17
                if var259003 + 1 >= 2 * ('cd', 68).length:
                    revert with 'NH{q', 50
                _6062 = mem[(32 * var259003 + 1) + ceil32(return_data.size) + 128]
                mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 196] = mem[(32 * var259003 + 1) + ceil32(return_data.size) + 128]
                mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 228] = this.address
                mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 260] = 128
                mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 292] = 0
                mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 324 len 0] = None
                require ext_code.size(address(cd[((96 * ('cd', 68).length) + cd[68] - 28)]))
                call address(cd[((96 * ('cd', 68).length) + cd[68] - 28)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _5998, _6062, address(this.address), 128, 0
            else:
                if 2 * ('cd', 68).length < 2:
                    revert with 'NH{q', 17
                if (2 * ('cd', 68).length) - 2 >= 2 * ('cd', 68).length:
                    revert with 'NH{q', 50
                if 2 * ('cd', 68).length < 1:
                    revert with 'NH{q', 17
                if (2 * ('cd', 68).length) - 1 >= 2 * ('cd', 68).length:
                    revert with 'NH{q', 50
                if mem[(32 * (2 * ('cd', 68).length) - 1) + ceil32(return_data.size) + 128] > -mem[(32 * (2 * ('cd', 68).length) - 2) + ceil32(return_data.size) + 128] - 1:
                    revert with 'NH{q', 17
                if cd[4] > -cd[36] - 1:
                    revert with 'NH{q', 17
                if mem[(32 * (2 * ('cd', 68).length) - 1) + ceil32(return_data.size) + 128] + mem[(32 * (2 * ('cd', 68).length) - 2) + ceil32(return_data.size) + 128] <= cd[4] + cd[36]:
                    return 0
                if 0 >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require ('cd', 68)[0] == address(('cd', 68)[0])
                if 0 >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require ('cd', 68)[1] == address(('cd', 68)[1])
                mem[ceil32(return_data.size) + (64 * ('cd', 68).length) + 132] = address(('cd', 68)[1])
                mem[ceil32(return_data.size) + (64 * ('cd', 68).length) + 164] = cd[4]
                require ext_code.size(address(('cd', 68)[0]))
                call address(('cd', 68)[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(('cd', 68)[1]), cd[4]
                mem[ceil32(return_data.size) + (64 * ('cd', 68).length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 128
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ('cd', 68).length < 1:
                    revert with 'NH{q', 17
                if var291002 < ('cd', 68).length - 1:
                    if var293001 < ('cd', 68).length:
                        require cd[((96 * var293001) + cd[68] + 68)] == address(cd[((96 * var293001) + cd[68] + 68)])
                        s = var293001
                        t = var293001
                        idx = var293002
                        while idx < 2 * ('cd', 68).length:
                            _7571 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            _7603 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((96 * t) + cd[68] + 164)] == address(cd[((96 * t) + cd[68] + 164)])
                            _7703 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_7703 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_7703 + 36] = _7571
                            mem[_7703 + 68] = _7603
                            mem[_7703 + 100] = address(cd[((96 * t) + cd[68] + 164)])
                            mem[_7703 + 132] = 128
                            mem[_7703 + 164] = mem[_7703]
                            u = 0
                            while u < mem[_7703]:
                                mem[_7703 + u + 196] = mem[_7703 + u + 32]
                                require cd[((96 * s) + cd[68] + 68)] == address(cd[((96 * s) + cd[68] + 68)])
                                u = u + 32
                                continue 
                            if ceil32(mem[_7703]) > mem[_7703]:
                                mem[_7703 + mem[_7703] + 196] = 0
                            require ext_code.size(address(cd[((96 * s) + cd[68] + 68)]))
                            call address(cd[((96 * s) + cd[68] + 68)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _7571, _7603, address(cd[((96 * t) + cd[68] + 164)]), Array(len=mem[_7703], data=mem[_7703 + 196 len ceil32(mem[_7703])])
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
                            if idx + 2 > -2:
                                revert with 'NH{q', 17
                            if idx + 3 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            # nil
                    revert with 'NH{q', 50
                if ('cd', 68).length < 1:
                    revert with 'NH{q', 17
                if ('cd', 68).length - 1 >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((96 * ('cd', 68).length) + cd[68] - 28)] == address(cd[((96 * ('cd', 68).length) + cd[68] - 28)])
                if var291003 >= 2 * ('cd', 68).length:
                    revert with 'NH{q', 50
                _6000 = mem[(32 * var291003) + ceil32(return_data.size) + 128]
                if var291003 > -2:
                    revert with 'NH{q', 17
                if var291003 + 1 >= 2 * ('cd', 68).length:
                    revert with 'NH{q', 50
                _6063 = mem[(32 * var291003 + 1) + ceil32(return_data.size) + 128]
                mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 196] = mem[(32 * var291003 + 1) + ceil32(return_data.size) + 128]
                mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 228] = this.address
                mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 260] = 128
                mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 292] = 0
                mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 324 len 0] = None
                require ext_code.size(address(cd[((96 * ('cd', 68).length) + cd[68] - 28)]))
                call address(cd[((96 * ('cd', 68).length) + cd[68] - 28)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _6000, _6063, address(this.address), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if cd[100]:
                return 0
            if 0 >= ('cd', 68).length:
                revert with 'NH{q', 50
            require ('cd', 68)[0] == address(('cd', 68)[0])
            mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 164] = this.address
            require ext_code.size(address(('cd', 68)[0]))
            staticcall address(('cd', 68)[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            if 0 < cd[36]:
                revert with 'NH{q', 17
            if -cd[36] > 0:
                mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 160] = -cd[36]
                return memory
                  from (4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 160
                   len (5 * ceil32(return_data.size)) + 32
            mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 164] = 32
            mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 196] = 10
            mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 228] = 'PGA:failed'
            revert with memory
              from (4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 160
               len (5 * ceil32(return_data.size)) + 100
        if var255001 >= ('cd', 68).length:
            revert with 'NH{q', 50
        require cd[((96 * var257001) + cd[68] + 100)] == uint8(cd[((96 * var257001) + cd[68] + 100)])
        if uint8(cd[((96 * var257001) + cd[68] + 100)]):
            if var257005 == -1:
                revert with 'NH{q', 17
            if ('cd', 68).length < 1:
                revert with 'NH{q', 17
            if var257005 + 1 < ('cd', 68).length - 1:
                var257001 = var257005 + 1
                var257005 = var257005 + 1
                var257006 = var257006
                continue 
            if not cd[100]:
                if 2 * ('cd', 68).length < 2:
                    revert with 'NH{q', 17
                if (2 * ('cd', 68).length) - 2 >= 2 * ('cd', 68).length:
                    revert with 'NH{q', 50
                if 2 * ('cd', 68).length < 1:
                    revert with 'NH{q', 17
                if (2 * ('cd', 68).length) - 1 >= 2 * ('cd', 68).length:
                    revert with 'NH{q', 50
                if mem[(32 * (2 * ('cd', 68).length) - 1) + ceil32(return_data.size) + 128] > -mem[(32 * (2 * ('cd', 68).length) - 2) + ceil32(return_data.size) + 128] - 1:
                    revert with 'NH{q', 17
                if cd[4] > -cd[36] - 1:
                    revert with 'NH{q', 17
                if mem[(32 * (2 * ('cd', 68).length) - 1) + ceil32(return_data.size) + 128] + mem[(32 * (2 * ('cd', 68).length) - 2) + ceil32(return_data.size) + 128] <= cd[4] + cd[36]:
                    return 0
                if 0 >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require ('cd', 68)[0] == address(('cd', 68)[0])
                if 0 >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require ('cd', 68)[1] == address(('cd', 68)[1])
                require ext_code.size(address(('cd', 68)[0]))
                call address(('cd', 68)[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(('cd', 68)[1]), cd[4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ('cd', 68).length < 1:
                    revert with 'NH{q', 17
                if var319002 < ('cd', 68).length - 1:
                    # nil
                else:
                    if ('cd', 68).length < 1:
                        revert with 'NH{q', 17
                    if ('cd', 68).length - 1 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((96 * ('cd', 68).length) + cd[68] - 28)] == address(cd[((96 * ('cd', 68).length) + cd[68] - 28)])
                    if var319003 >= 2 * ('cd', 68).length:
                        revert with 'NH{q', 50
                    if var319003 > -2:
                        revert with 'NH{q', 17
                    if var319003 + 1 >= 2 * ('cd', 68).length:
                        revert with 'NH{q', 50
                    # nil
            else:
                if 0 >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require ('cd', 68)[0] == address(('cd', 68)[0])
                if 0 >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require ('cd', 68)[1] == address(('cd', 68)[1])
                mem[ceil32(return_data.size) + (64 * ('cd', 68).length) + 132] = address(('cd', 68)[1])
                mem[ceil32(return_data.size) + (64 * ('cd', 68).length) + 164] = cd[4]
                require ext_code.size(address(('cd', 68)[0]))
                call address(('cd', 68)[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(('cd', 68)[1]), cd[4]
                mem[ceil32(return_data.size) + (64 * ('cd', 68).length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ('cd', 68).length < 1:
                    revert with 'NH{q', 17
                if var287002 < ('cd', 68).length - 1:
                    if var289001 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    # nil
                else:
                    if ('cd', 68).length < 1:
                        revert with 'NH{q', 17
                    if ('cd', 68).length - 1 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((96 * ('cd', 68).length) + cd[68] - 28)] == address(cd[((96 * ('cd', 68).length) + cd[68] - 28)])
                    if var287003 >= 2 * ('cd', 68).length:
                        revert with 'NH{q', 50
                    _7608 = mem[(32 * var287003) + ceil32(return_data.size) + 128]
                    if var287003 > -2:
                        revert with 'NH{q', 17
                    if var287003 + 1 >= 2 * ('cd', 68).length:
                        revert with 'NH{q', 50
                    _7656 = mem[(32 * var287003 + 1) + ceil32(return_data.size) + 128]
                    mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 196] = mem[(32 * var287003 + 1) + ceil32(return_data.size) + 128]
                    mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 228] = this.address
                    mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 260] = 128
                    mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 292] = 0
                    mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 324 len 0] = None
                    require ext_code.size(address(cd[((96 * ('cd', 68).length) + cd[68] - 28)]))
                    call address(cd[((96 * ('cd', 68).length) + cd[68] - 28)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _7608, _7656, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if cd[100]:
                        return 0
                    if 0 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require ('cd', 68)[0] == address(('cd', 68)[0])
                    mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 164] = this.address
                    require ext_code.size(address(('cd', 68)[0]))
                    staticcall address(('cd', 68)[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 0 < cd[36]:
                        revert with 'NH{q', 17
                    if -cd[36] > 0:
                        mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 160] = -cd[36]
                        return memory
                          from (4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 160
                           len (5 * ceil32(return_data.size)) + 32
                    mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 164] = 32
                    mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 196] = 10
                    mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 228] = 'PGA:failed'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 160
                       len (5 * ceil32(return_data.size)) + 100
        else:
            if var257005 >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((96 * var257005) + cd[68] + 36)] == address(cd[((96 * var257005) + cd[68] + 36)])
            if var257005 >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((96 * var257005) + cd[68] + 68)] == address(cd[((96 * var257005) + cd[68] + 68)])
            require ext_code.size(address(cd[((96 * var257005) + cd[68] + 68)]))
            staticcall address(cd[((96 * var257005) + cd[68] + 68)]).token0() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + (64 * ('cd', 68).length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if var257005 >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((96 * var257005) + cd[68] + 68)] == address(cd[((96 * var257005) + cd[68] + 68)])
            mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 128] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(cd[((96 * var257005) + cd[68] + 68)]))
            staticcall address(cd[((96 * var257005) + cd[68] + 68)]).getReserves() with:
                    gas gas_remaining wei
                   args mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 132 len ceil32(return_data.size)]
            mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 128 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 128
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if var257006 and 997 > -1 / var257006:
                revert with 'NH{q', 17
            if ext_call.return_data[12 len 20] != address(cd[((96 * var257005) + cd[68] + 36)]):
                if 997 * var257006 and ext_call.return_data[18 len 14] > -1 / 997 * var257006:
                    revert with 'NH{q', 17
                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[50 len 14] > (-997 * var257006) - 1:
                    revert with 'NH{q', 17
                if not (1000 * ext_call.return_data[50 len 14]) + (997 * var257006):
                    revert with 'NH{q', 18
                if var257005 and 2 > -1 / var257005:
                    revert with 'NH{q', 17
                if 2 * var257005 >= 2 * ('cd', 68).length:
                    revert with 'NH{q', 50
                mem[(64 * var257005) + ceil32(return_data.size) + 128] = 997 * var257006 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * var257006)
                if var257005 == -1:
                    revert with 'NH{q', 17
                if ('cd', 68).length < 1:
                    revert with 'NH{q', 17
                if var257005 + 1 < ('cd', 68).length - 1:
                    var257001 = var257005 + 1
                    var257005 = var257005 + 1
                    var257006 = 997 * var257006 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * var257006)
                    continue 
                if cd[100]:
                    if 0 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require ('cd', 68)[0] == address(('cd', 68)[0])
                    if 0 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require ('cd', 68)[1] == address(('cd', 68)[1])
                    mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 132] = address(('cd', 68)[1])
                    mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 164] = cd[4]
                    require ext_code.size(address(('cd', 68)[0]))
                    call address(('cd', 68)[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 132 len (5 * ceil32(return_data.size)) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if ('cd', 68).length < 1:
                        revert with 'NH{q', 17
                    if var414002 < ('cd', 68).length - 1:
                        # nil
                    else:
                        if ('cd', 68).length < 1:
                            revert with 'NH{q', 17
                        if ('cd', 68).length - 1 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((96 * ('cd', 68).length) + cd[68] - 28)] == address(cd[((96 * ('cd', 68).length) + cd[68] - 28)])
                        if var414003 >= 2 * ('cd', 68).length:
                            revert with 'NH{q', 50
                        if var414003 > -2:
                            revert with 'NH{q', 17
                        if var414003 + 1 >= 2 * ('cd', 68).length:
                            revert with 'NH{q', 50
                        # nil
                else:
                    if 2 * ('cd', 68).length < 2:
                        revert with 'NH{q', 17
                    if (2 * ('cd', 68).length) - 2 >= 2 * ('cd', 68).length:
                        revert with 'NH{q', 50
                    if 2 * ('cd', 68).length < 1:
                        revert with 'NH{q', 17
                    if (2 * ('cd', 68).length) - 1 >= 2 * ('cd', 68).length:
                        revert with 'NH{q', 50
                    if mem[(32 * (2 * ('cd', 68).length) - 1) + ceil32(return_data.size) + 128] > -mem[(32 * (2 * ('cd', 68).length) - 2) + ceil32(return_data.size) + 128] - 1:
                        revert with 'NH{q', 17
                    if cd[4] > -cd[36] - 1:
                        revert with 'NH{q', 17
                    if mem[(32 * (2 * ('cd', 68).length) - 1) + ceil32(return_data.size) + 128] + mem[(32 * (2 * ('cd', 68).length) - 2) + ceil32(return_data.size) + 128] <= cd[4] + cd[36]:
                        mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 128] = 0
                        return memory
                          from (4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 128
                           len (5 * ceil32(return_data.size)) + 32
                    if 0 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require ('cd', 68)[0] == address(('cd', 68)[0])
                    if 0 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require ('cd', 68)[1] == address(('cd', 68)[1])
                    mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 132] = address(('cd', 68)[1])
                    mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 164] = cd[4]
                    require ext_code.size(address(('cd', 68)[0]))
                    call address(('cd', 68)[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 132 len (5 * ceil32(return_data.size)) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if ('cd', 68).length < 1:
                        revert with 'NH{q', 17
                    if var446002 < ('cd', 68).length - 1:
                        # nil
                    else:
                        if ('cd', 68).length < 1:
                            revert with 'NH{q', 17
                        if ('cd', 68).length - 1 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((96 * ('cd', 68).length) + cd[68] - 28)] == address(cd[((96 * ('cd', 68).length) + cd[68] - 28)])
                        if var446003 >= 2 * ('cd', 68).length:
                            revert with 'NH{q', 50
                        if var446003 > -2:
                            revert with 'NH{q', 17
                        if var446003 + 1 >= 2 * ('cd', 68).length:
                            revert with 'NH{q', 50
                        # nil
            else:
                if 997 * var257006 and ext_call.return_data[50 len 14] > -1 / 997 * var257006:
                    revert with 'NH{q', 17
                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[18 len 14] > (-997 * var257006) - 1:
                    revert with 'NH{q', 17
                if not (1000 * ext_call.return_data[18 len 14]) + (997 * var257006):
                    revert with 'NH{q', 18
                if var257005 and 2 > -1 / var257005:
                    revert with 'NH{q', 17
                if 2 * var257005 > -2:
                    revert with 'NH{q', 17
                if (2 * var257005) + 1 >= 2 * ('cd', 68).length:
                    revert with 'NH{q', 50
                mem[(32 * (2 * var257005) + 1) + ceil32(return_data.size) + 128] = 997 * var257006 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * var257006)
                if var257005 == -1:
                    revert with 'NH{q', 17
                if ('cd', 68).length < 1:
                    revert with 'NH{q', 17
                if var257005 + 1 < ('cd', 68).length - 1:
                    var257001 = var257005 + 1
                    var257005 = var257005 + 1
                    var257006 = 997 * var257006 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * var257006)
                    continue 
                if cd[100]:
                    if 0 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require ('cd', 68)[0] == address(('cd', 68)[0])
                    if 0 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require ('cd', 68)[1] == address(('cd', 68)[1])
                    mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 132] = address(('cd', 68)[1])
                    mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 164] = cd[4]
                    require ext_code.size(address(('cd', 68)[0]))
                    call address(('cd', 68)[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 132 len (5 * ceil32(return_data.size)) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if ('cd', 68).length < 1:
                        revert with 'NH{q', 17
                    if var421002 < ('cd', 68).length - 1:
                        # nil
                    else:
                        if ('cd', 68).length < 1:
                            revert with 'NH{q', 17
                        if ('cd', 68).length - 1 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((96 * ('cd', 68).length) + cd[68] - 28)] == address(cd[((96 * ('cd', 68).length) + cd[68] - 28)])
                        if var421003 >= 2 * ('cd', 68).length:
                            revert with 'NH{q', 50
                        if var421003 > -2:
                            revert with 'NH{q', 17
                        if var421003 + 1 >= 2 * ('cd', 68).length:
                            revert with 'NH{q', 50
                        # nil
                else:
                    if 2 * ('cd', 68).length < 2:
                        revert with 'NH{q', 17
                    if (2 * ('cd', 68).length) - 2 >= 2 * ('cd', 68).length:
                        revert with 'NH{q', 50
                    if 2 * ('cd', 68).length < 1:
                        revert with 'NH{q', 17
                    if (2 * ('cd', 68).length) - 1 >= 2 * ('cd', 68).length:
                        revert with 'NH{q', 50
                    if mem[(32 * (2 * ('cd', 68).length) - 1) + ceil32(return_data.size) + 128] > -mem[(32 * (2 * ('cd', 68).length) - 2) + ceil32(return_data.size) + 128] - 1:
                        revert with 'NH{q', 17
                    if cd[4] > -cd[36] - 1:
                        revert with 'NH{q', 17
                    if mem[(32 * (2 * ('cd', 68).length) - 1) + ceil32(return_data.size) + 128] + mem[(32 * (2 * ('cd', 68).length) - 2) + ceil32(return_data.size) + 128] <= cd[4] + cd[36]:
                        mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 128] = 0
                        return memory
                          from (4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 128
                           len (5 * ceil32(return_data.size)) + 32
                    if 0 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require ('cd', 68)[0] == address(('cd', 68)[0])
                    if 0 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require ('cd', 68)[1] == address(('cd', 68)[1])
                    mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 132] = address(('cd', 68)[1])
                    mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 164] = cd[4]
                    require ext_code.size(address(('cd', 68)[0]))
                    call address(('cd', 68)[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 132 len (5 * ceil32(return_data.size)) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if ('cd', 68).length < 1:
                        revert with 'NH{q', 17
                    if var453002 < ('cd', 68).length - 1:
                        # nil
                    else:
                        if ('cd', 68).length < 1:
                            revert with 'NH{q', 17
                        if ('cd', 68).length - 1 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((96 * ('cd', 68).length) + cd[68] - 28)] == address(cd[((96 * ('cd', 68).length) + cd[68] - 28)])
                        if var453003 >= 2 * ('cd', 68).length:
                            revert with 'NH{q', 50
                        if var453003 > -2:
                            revert with 'NH{q', 17
                        if var453003 + 1 >= 2 * ('cd', 68).length:
                            revert with 'NH{q', 50
                        # nil
    else:
        mem[ceil32(return_data.size) + 128 len 64 * ('cd', 68).length] = call.data[calldata.size len 64 * ('cd', 68).length]
        if ('cd', 68).length < 1:
            revert with 'NH{q', 17
        if var254002 >= ('cd', 68).length - 1:
            if cd[100]:
                if 0 >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require ('cd', 68)[0] == address(('cd', 68)[0])
                if 0 >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require ('cd', 68)[1] == address(('cd', 68)[1])
                mem[ceil32(return_data.size) + (64 * ('cd', 68).length) + 132] = address(('cd', 68)[1])
                mem[ceil32(return_data.size) + (64 * ('cd', 68).length) + 164] = cd[4]
                require ext_code.size(address(('cd', 68)[0]))
                call address(('cd', 68)[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(('cd', 68)[1]), cd[4]
                mem[ceil32(return_data.size) + (64 * ('cd', 68).length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 128
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ('cd', 68).length < 1:
                    revert with 'NH{q', 17
                if var260002 < ('cd', 68).length - 1:
                    if var262001 < ('cd', 68).length:
                        require cd[((96 * var262001) + cd[68] + 68)] == address(cd[((96 * var262001) + cd[68] + 68)])
                        s = var262001
                        t = var262001
                        idx = var262002
                        while idx < 2 * ('cd', 68).length:
                            _7572 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            _7605 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((96 * t) + cd[68] + 164)] == address(cd[((96 * t) + cd[68] + 164)])
                            _7704 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_7704 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_7704 + 36] = _7572
                            mem[_7704 + 68] = _7605
                            mem[_7704 + 100] = address(cd[((96 * t) + cd[68] + 164)])
                            mem[_7704 + 132] = 128
                            mem[_7704 + 164] = mem[_7704]
                            u = 0
                            while u < mem[_7704]:
                                mem[_7704 + u + 196] = mem[_7704 + u + 32]
                                require cd[((96 * s) + cd[68] + 68)] == address(cd[((96 * s) + cd[68] + 68)])
                                u = u + 32
                                continue 
                            if ceil32(mem[_7704]) > mem[_7704]:
                                mem[_7704 + mem[_7704] + 196] = 0
                            require ext_code.size(address(cd[((96 * s) + cd[68] + 68)]))
                            call address(cd[((96 * s) + cd[68] + 68)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _7572, _7605, address(cd[((96 * t) + cd[68] + 164)]), Array(len=mem[_7704], data=mem[_7704 + 196 len ceil32(mem[_7704])])
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
                            if idx + 2 > -2:
                                revert with 'NH{q', 17
                            if idx + 3 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            # nil
                    revert with 'NH{q', 50
                if ('cd', 68).length < 1:
                    revert with 'NH{q', 17
                if ('cd', 68).length - 1 >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((96 * ('cd', 68).length) + cd[68] - 28)] == address(cd[((96 * ('cd', 68).length) + cd[68] - 28)])
                if var260003 >= 2 * ('cd', 68).length:
                    revert with 'NH{q', 50
                _6002 = mem[(32 * var260003) + ceil32(return_data.size) + 128]
                if var260003 > -2:
                    revert with 'NH{q', 17
                if var260003 + 1 >= 2 * ('cd', 68).length:
                    revert with 'NH{q', 50
                _6064 = mem[(32 * var260003 + 1) + ceil32(return_data.size) + 128]
                mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 196] = mem[(32 * var260003 + 1) + ceil32(return_data.size) + 128]
                mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 228] = this.address
                mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 260] = 128
                mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 292] = 0
                mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 324 len 0] = None
                require ext_code.size(address(cd[((96 * ('cd', 68).length) + cd[68] - 28)]))
                call address(cd[((96 * ('cd', 68).length) + cd[68] - 28)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _6002, _6064, address(this.address), 128, 0
            else:
                if 2 * ('cd', 68).length < 2:
                    revert with 'NH{q', 17
                if (2 * ('cd', 68).length) - 2 >= 2 * ('cd', 68).length:
                    revert with 'NH{q', 50
                if 2 * ('cd', 68).length < 1:
                    revert with 'NH{q', 17
                if (2 * ('cd', 68).length) - 1 >= 2 * ('cd', 68).length:
                    revert with 'NH{q', 50
                if mem[(32 * (2 * ('cd', 68).length) - 1) + ceil32(return_data.size) + 128] > -mem[(32 * (2 * ('cd', 68).length) - 2) + ceil32(return_data.size) + 128] - 1:
                    revert with 'NH{q', 17
                if cd[4] > -cd[36] - 1:
                    revert with 'NH{q', 17
                if mem[(32 * (2 * ('cd', 68).length) - 1) + ceil32(return_data.size) + 128] + mem[(32 * (2 * ('cd', 68).length) - 2) + ceil32(return_data.size) + 128] <= cd[4] + cd[36]:
                    return 0
                if 0 >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require ('cd', 68)[0] == address(('cd', 68)[0])
                if 0 >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require ('cd', 68)[1] == address(('cd', 68)[1])
                mem[ceil32(return_data.size) + (64 * ('cd', 68).length) + 132] = address(('cd', 68)[1])
                mem[ceil32(return_data.size) + (64 * ('cd', 68).length) + 164] = cd[4]
                require ext_code.size(address(('cd', 68)[0]))
                call address(('cd', 68)[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(('cd', 68)[1]), cd[4]
                mem[ceil32(return_data.size) + (64 * ('cd', 68).length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 128
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ('cd', 68).length < 1:
                    revert with 'NH{q', 17
                if var292002 < ('cd', 68).length - 1:
                    if var294001 < ('cd', 68).length:
                        require cd[((96 * var294001) + cd[68] + 68)] == address(cd[((96 * var294001) + cd[68] + 68)])
                        s = var294001
                        t = var294001
                        idx = var294002
                        while idx < 2 * ('cd', 68).length:
                            _7573 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            _7606 = mem[(32 * idx + 1) + ceil32(return_data.size) + 128]
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((96 * t) + cd[68] + 164)] == address(cd[((96 * t) + cd[68] + 164)])
                            _7705 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_7705 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_7705 + 36] = _7573
                            mem[_7705 + 68] = _7606
                            mem[_7705 + 100] = address(cd[((96 * t) + cd[68] + 164)])
                            mem[_7705 + 132] = 128
                            mem[_7705 + 164] = mem[_7705]
                            u = 0
                            while u < mem[_7705]:
                                mem[_7705 + u + 196] = mem[_7705 + u + 32]
                                require cd[((96 * s) + cd[68] + 68)] == address(cd[((96 * s) + cd[68] + 68)])
                                u = u + 32
                                continue 
                            if ceil32(mem[_7705]) > mem[_7705]:
                                mem[_7705 + mem[_7705] + 196] = 0
                            require ext_code.size(address(cd[((96 * s) + cd[68] + 68)]))
                            call address(cd[((96 * s) + cd[68] + 68)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _7573, _7606, address(cd[((96 * t) + cd[68] + 164)]), Array(len=mem[_7705], data=mem[_7705 + 196 len ceil32(mem[_7705])])
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
                            if idx + 2 > -2:
                                revert with 'NH{q', 17
                            if idx + 3 >= mem[ceil32(return_data.size) + 96]:
                                revert with 'NH{q', 50
                            # nil
                    revert with 'NH{q', 50
                if ('cd', 68).length < 1:
                    revert with 'NH{q', 17
                if ('cd', 68).length - 1 >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((96 * ('cd', 68).length) + cd[68] - 28)] == address(cd[((96 * ('cd', 68).length) + cd[68] - 28)])
                if var292003 >= 2 * ('cd', 68).length:
                    revert with 'NH{q', 50
                _6004 = mem[(32 * var292003) + ceil32(return_data.size) + 128]
                if var292003 > -2:
                    revert with 'NH{q', 17
                if var292003 + 1 >= 2 * ('cd', 68).length:
                    revert with 'NH{q', 50
                _6065 = mem[(32 * var292003 + 1) + ceil32(return_data.size) + 128]
                mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 196] = mem[(32 * var292003 + 1) + ceil32(return_data.size) + 128]
                mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 228] = this.address
                mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 260] = 128
                mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 292] = 0
                mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 324 len 0] = None
                require ext_code.size(address(cd[((96 * ('cd', 68).length) + cd[68] - 28)]))
                call address(cd[((96 * ('cd', 68).length) + cd[68] - 28)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _6004, _6065, address(this.address), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if cd[100]:
                return 0
            if 0 >= ('cd', 68).length:
                revert with 'NH{q', 50
            require ('cd', 68)[0] == address(('cd', 68)[0])
            mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 164] = this.address
            require ext_code.size(address(('cd', 68)[0]))
            staticcall address(('cd', 68)[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            if 0 < cd[36]:
                revert with 'NH{q', 17
            if -cd[36] > 0:
                mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 160] = -cd[36]
                return memory
                  from (4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 160
                   len (5 * ceil32(return_data.size)) + 32
            mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 164] = 32
            mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 196] = 10
            mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 228] = 'PGA:failed'
            revert with memory
              from (4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 160
               len (5 * ceil32(return_data.size)) + 100
        if var256001 >= ('cd', 68).length:
            revert with 'NH{q', 50
        require cd[((96 * var258001) + cd[68] + 100)] == uint8(cd[((96 * var258001) + cd[68] + 100)])
        if uint8(cd[((96 * var258001) + cd[68] + 100)]):
            if var258005 == -1:
                revert with 'NH{q', 17
            if ('cd', 68).length < 1:
                revert with 'NH{q', 17
            if var258005 + 1 < ('cd', 68).length - 1:
                var258001 = var258005 + 1
                var258005 = var258005 + 1
                var258006 = var258006
                continue 
            if not cd[100]:
                if 2 * ('cd', 68).length < 2:
                    revert with 'NH{q', 17
                if (2 * ('cd', 68).length) - 2 >= 2 * ('cd', 68).length:
                    revert with 'NH{q', 50
                if 2 * ('cd', 68).length < 1:
                    revert with 'NH{q', 17
                if (2 * ('cd', 68).length) - 1 >= 2 * ('cd', 68).length:
                    revert with 'NH{q', 50
                if mem[(32 * (2 * ('cd', 68).length) - 1) + ceil32(return_data.size) + 128] > -mem[(32 * (2 * ('cd', 68).length) - 2) + ceil32(return_data.size) + 128] - 1:
                    revert with 'NH{q', 17
                if cd[4] > -cd[36] - 1:
                    revert with 'NH{q', 17
                if mem[(32 * (2 * ('cd', 68).length) - 1) + ceil32(return_data.size) + 128] + mem[(32 * (2 * ('cd', 68).length) - 2) + ceil32(return_data.size) + 128] <= cd[4] + cd[36]:
                    return 0
                if 0 >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require ('cd', 68)[0] == address(('cd', 68)[0])
                if 0 >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require ('cd', 68)[1] == address(('cd', 68)[1])
                require ext_code.size(address(('cd', 68)[0]))
                call address(('cd', 68)[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(('cd', 68)[1]), cd[4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ('cd', 68).length < 1:
                    revert with 'NH{q', 17
                if var320002 < ('cd', 68).length - 1:
                    # nil
                else:
                    if ('cd', 68).length < 1:
                        revert with 'NH{q', 17
                    if ('cd', 68).length - 1 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((96 * ('cd', 68).length) + cd[68] - 28)] == address(cd[((96 * ('cd', 68).length) + cd[68] - 28)])
                    if var320003 >= 2 * ('cd', 68).length:
                        revert with 'NH{q', 50
                    if var320003 > -2:
                        revert with 'NH{q', 17
                    if var320003 + 1 >= 2 * ('cd', 68).length:
                        revert with 'NH{q', 50
                    # nil
            else:
                if 0 >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require ('cd', 68)[0] == address(('cd', 68)[0])
                if 0 >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require ('cd', 68)[1] == address(('cd', 68)[1])
                mem[ceil32(return_data.size) + (64 * ('cd', 68).length) + 132] = address(('cd', 68)[1])
                mem[ceil32(return_data.size) + (64 * ('cd', 68).length) + 164] = cd[4]
                require ext_code.size(address(('cd', 68)[0]))
                call address(('cd', 68)[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(('cd', 68)[1]), cd[4]
                mem[ceil32(return_data.size) + (64 * ('cd', 68).length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ('cd', 68).length < 1:
                    revert with 'NH{q', 17
                if var288002 < ('cd', 68).length - 1:
                    if var290001 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    # nil
                else:
                    if ('cd', 68).length < 1:
                        revert with 'NH{q', 17
                    if ('cd', 68).length - 1 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((96 * ('cd', 68).length) + cd[68] - 28)] == address(cd[((96 * ('cd', 68).length) + cd[68] - 28)])
                    if var288003 >= 2 * ('cd', 68).length:
                        revert with 'NH{q', 50
                    _7615 = mem[(32 * var288003) + ceil32(return_data.size) + 128]
                    if var288003 > -2:
                        revert with 'NH{q', 17
                    if var288003 + 1 >= 2 * ('cd', 68).length:
                        revert with 'NH{q', 50
                    _7662 = mem[(32 * var288003 + 1) + ceil32(return_data.size) + 128]
                    mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 196] = mem[(32 * var288003 + 1) + ceil32(return_data.size) + 128]
                    mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 228] = this.address
                    mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 260] = 128
                    mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 292] = 0
                    mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 324 len 0] = None
                    require ext_code.size(address(cd[((96 * ('cd', 68).length) + cd[68] - 28)]))
                    call address(cd[((96 * ('cd', 68).length) + cd[68] - 28)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _7615, _7662, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if cd[100]:
                        return 0
                    if 0 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require ('cd', 68)[0] == address(('cd', 68)[0])
                    mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 164] = this.address
                    require ext_code.size(address(('cd', 68)[0]))
                    staticcall address(('cd', 68)[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 0 < cd[36]:
                        revert with 'NH{q', 17
                    if -cd[36] > 0:
                        mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 160] = -cd[36]
                        return memory
                          from (4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 160
                           len (5 * ceil32(return_data.size)) + 32
                    mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 164] = 32
                    mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 196] = 10
                    mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 228] = 'PGA:failed'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 160
                       len (5 * ceil32(return_data.size)) + 100
        else:
            if var258005 >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((96 * var258005) + cd[68] + 36)] == address(cd[((96 * var258005) + cd[68] + 36)])
            if var258005 >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((96 * var258005) + cd[68] + 68)] == address(cd[((96 * var258005) + cd[68] + 68)])
            require ext_code.size(address(cd[((96 * var258005) + cd[68] + 68)]))
            staticcall address(cd[((96 * var258005) + cd[68] + 68)]).token0() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + (64 * ('cd', 68).length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if var258005 >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((96 * var258005) + cd[68] + 68)] == address(cd[((96 * var258005) + cd[68] + 68)])
            mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 128] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(cd[((96 * var258005) + cd[68] + 68)]))
            staticcall address(cd[((96 * var258005) + cd[68] + 68)]).getReserves() with:
                    gas gas_remaining wei
                   args mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 132 len ceil32(return_data.size)]
            mem[(2 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 128 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 128
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if var258006 and 997 > -1 / var258006:
                revert with 'NH{q', 17
            if ext_call.return_data[12 len 20] != address(cd[((96 * var258005) + cd[68] + 36)]):
                if 997 * var258006 and ext_call.return_data[18 len 14] > -1 / 997 * var258006:
                    revert with 'NH{q', 17
                if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[50 len 14] > (-997 * var258006) - 1:
                    revert with 'NH{q', 17
                if not (1000 * ext_call.return_data[50 len 14]) + (997 * var258006):
                    revert with 'NH{q', 18
                if var258005 and 2 > -1 / var258005:
                    revert with 'NH{q', 17
                if 2 * var258005 >= 2 * ('cd', 68).length:
                    revert with 'NH{q', 50
                mem[(64 * var258005) + ceil32(return_data.size) + 128] = 997 * var258006 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * var258006)
                if var258005 == -1:
                    revert with 'NH{q', 17
                if ('cd', 68).length < 1:
                    revert with 'NH{q', 17
                if var258005 + 1 < ('cd', 68).length - 1:
                    var258001 = var258005 + 1
                    var258005 = var258005 + 1
                    var258006 = 997 * var258006 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * var258006)
                    continue 
                if cd[100]:
                    if 0 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require ('cd', 68)[0] == address(('cd', 68)[0])
                    if 0 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require ('cd', 68)[1] == address(('cd', 68)[1])
                    mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 132] = address(('cd', 68)[1])
                    mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 164] = cd[4]
                    require ext_code.size(address(('cd', 68)[0]))
                    call address(('cd', 68)[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 132 len (5 * ceil32(return_data.size)) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if ('cd', 68).length < 1:
                        revert with 'NH{q', 17
                    if var415002 < ('cd', 68).length - 1:
                        # nil
                    else:
                        if ('cd', 68).length < 1:
                            revert with 'NH{q', 17
                        if ('cd', 68).length - 1 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((96 * ('cd', 68).length) + cd[68] - 28)] == address(cd[((96 * ('cd', 68).length) + cd[68] - 28)])
                        if var415003 >= 2 * ('cd', 68).length:
                            revert with 'NH{q', 50
                        if var415003 > -2:
                            revert with 'NH{q', 17
                        if var415003 + 1 >= 2 * ('cd', 68).length:
                            revert with 'NH{q', 50
                        # nil
                else:
                    if 2 * ('cd', 68).length < 2:
                        revert with 'NH{q', 17
                    if (2 * ('cd', 68).length) - 2 >= 2 * ('cd', 68).length:
                        revert with 'NH{q', 50
                    if 2 * ('cd', 68).length < 1:
                        revert with 'NH{q', 17
                    if (2 * ('cd', 68).length) - 1 >= 2 * ('cd', 68).length:
                        revert with 'NH{q', 50
                    if mem[(32 * (2 * ('cd', 68).length) - 1) + ceil32(return_data.size) + 128] > -mem[(32 * (2 * ('cd', 68).length) - 2) + ceil32(return_data.size) + 128] - 1:
                        revert with 'NH{q', 17
                    if cd[4] > -cd[36] - 1:
                        revert with 'NH{q', 17
                    if mem[(32 * (2 * ('cd', 68).length) - 1) + ceil32(return_data.size) + 128] + mem[(32 * (2 * ('cd', 68).length) - 2) + ceil32(return_data.size) + 128] <= cd[4] + cd[36]:
                        mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 128] = 0
                        return memory
                          from (4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 128
                           len (5 * ceil32(return_data.size)) + 32
                    if 0 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require ('cd', 68)[0] == address(('cd', 68)[0])
                    if 0 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require ('cd', 68)[1] == address(('cd', 68)[1])
                    mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 132] = address(('cd', 68)[1])
                    mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 164] = cd[4]
                    require ext_code.size(address(('cd', 68)[0]))
                    call address(('cd', 68)[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 132 len (5 * ceil32(return_data.size)) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if ('cd', 68).length < 1:
                        revert with 'NH{q', 17
                    if var447002 < ('cd', 68).length - 1:
                        # nil
                    else:
                        if ('cd', 68).length < 1:
                            revert with 'NH{q', 17
                        if ('cd', 68).length - 1 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((96 * ('cd', 68).length) + cd[68] - 28)] == address(cd[((96 * ('cd', 68).length) + cd[68] - 28)])
                        if var447003 >= 2 * ('cd', 68).length:
                            revert with 'NH{q', 50
                        if var447003 > -2:
                            revert with 'NH{q', 17
                        if var447003 + 1 >= 2 * ('cd', 68).length:
                            revert with 'NH{q', 50
                        # nil
            else:
                if 997 * var258006 and ext_call.return_data[50 len 14] > -1 / 997 * var258006:
                    revert with 'NH{q', 17
                if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[18 len 14] > (-997 * var258006) - 1:
                    revert with 'NH{q', 17
                if not (1000 * ext_call.return_data[18 len 14]) + (997 * var258006):
                    revert with 'NH{q', 18
                if var258005 and 2 > -1 / var258005:
                    revert with 'NH{q', 17
                if 2 * var258005 > -2:
                    revert with 'NH{q', 17
                if (2 * var258005) + 1 >= 2 * ('cd', 68).length:
                    revert with 'NH{q', 50
                mem[(32 * (2 * var258005) + 1) + ceil32(return_data.size) + 128] = 997 * var258006 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * var258006)
                if var258005 == -1:
                    revert with 'NH{q', 17
                if ('cd', 68).length < 1:
                    revert with 'NH{q', 17
                if var258005 + 1 < ('cd', 68).length - 1:
                    var258001 = var258005 + 1
                    var258005 = var258005 + 1
                    var258006 = 997 * var258006 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * var258006)
                    continue 
                if cd[100]:
                    if 0 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require ('cd', 68)[0] == address(('cd', 68)[0])
                    if 0 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require ('cd', 68)[1] == address(('cd', 68)[1])
                    mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 132] = address(('cd', 68)[1])
                    mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 164] = cd[4]
                    require ext_code.size(address(('cd', 68)[0]))
                    call address(('cd', 68)[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 132 len (5 * ceil32(return_data.size)) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if ('cd', 68).length < 1:
                        revert with 'NH{q', 17
                    if var422002 < ('cd', 68).length - 1:
                        # nil
                    else:
                        if ('cd', 68).length < 1:
                            revert with 'NH{q', 17
                        if ('cd', 68).length - 1 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((96 * ('cd', 68).length) + cd[68] - 28)] == address(cd[((96 * ('cd', 68).length) + cd[68] - 28)])
                        if var422003 >= 2 * ('cd', 68).length:
                            revert with 'NH{q', 50
                        if var422003 > -2:
                            revert with 'NH{q', 17
                        if var422003 + 1 >= 2 * ('cd', 68).length:
                            revert with 'NH{q', 50
                        # nil
                else:
                    if 2 * ('cd', 68).length < 2:
                        revert with 'NH{q', 17
                    if (2 * ('cd', 68).length) - 2 >= 2 * ('cd', 68).length:
                        revert with 'NH{q', 50
                    if 2 * ('cd', 68).length < 1:
                        revert with 'NH{q', 17
                    if (2 * ('cd', 68).length) - 1 >= 2 * ('cd', 68).length:
                        revert with 'NH{q', 50
                    if mem[(32 * (2 * ('cd', 68).length) - 1) + ceil32(return_data.size) + 128] > -mem[(32 * (2 * ('cd', 68).length) - 2) + ceil32(return_data.size) + 128] - 1:
                        revert with 'NH{q', 17
                    if cd[4] > -cd[36] - 1:
                        revert with 'NH{q', 17
                    if mem[(32 * (2 * ('cd', 68).length) - 1) + ceil32(return_data.size) + 128] + mem[(32 * (2 * ('cd', 68).length) - 2) + ceil32(return_data.size) + 128] <= cd[4] + cd[36]:
                        mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 128] = 0
                        return memory
                          from (4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 128
                           len (5 * ceil32(return_data.size)) + 32
                    if 0 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require ('cd', 68)[0] == address(('cd', 68)[0])
                    if 0 >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require ('cd', 68)[1] == address(('cd', 68)[1])
                    mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 132] = address(('cd', 68)[1])
                    mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 164] = cd[4]
                    require ext_code.size(address(('cd', 68)[0]))
                    call address(('cd', 68)[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + (64 * ('cd', 68).length) + 132 len (5 * ceil32(return_data.size)) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if ('cd', 68).length < 1:
                        revert with 'NH{q', 17
                    if var454002 < ('cd', 68).length - 1:
                        # nil
                    else:
                        if ('cd', 68).length < 1:
                            revert with 'NH{q', 17
                        if ('cd', 68).length - 1 >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((96 * ('cd', 68).length) + cd[68] - 28)] == address(cd[((96 * ('cd', 68).length) + cd[68] - 28)])
                        if var454003 >= 2 * ('cd', 68).length:
                            revert with 'NH{q', 50
                        if var454003 > -2:
                            revert with 'NH{q', 17
                        if var454003 + 1 >= 2 * ('cd', 68).length:
                            revert with 'NH{q', 50
                        # nil
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
