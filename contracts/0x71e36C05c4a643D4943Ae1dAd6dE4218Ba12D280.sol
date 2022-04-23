contract main {




// =====================  Runtime code  =====================


mapping of uint256 admins;

function admins(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return admins[arg1]
}

function kill() payable {
    if admins[address(msg.sender)] != 1:
        revert with 0, 'no50'
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function addAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if admins[address(msg.sender)] != 1:
        revert with 0, 'no50'
    admins[address(arg1)] = 1
}

function removeAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if admins[address(msg.sender)] != 1:
        revert with 0, 'no50'
    admins[address(arg1)] = 0
}

function withdrawEth() payable {
    if admins[address(msg.sender)] != 1:
        revert with 0, 'no50'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0f294d08(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if admins[address(msg.sender)] != 1:
        revert with 0, 'no50'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addAdmins(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if admins[address(msg.sender)] != 1:
        revert with 0, 'no50'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        admins[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function removeAdmins(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if admins[address(msg.sender)] != 1:
        revert with 0, 'no50'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        admins[mem[(32 * idx) + 140 len 20]] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function withdrawTokens(address[] arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 0
    if admins[address(msg.sender)] != 1:
        revert with 0, 'no50'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _14 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _15 = mem[_14]
        require mem[_14] == mem[_14]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _15
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        call address(cd[((32 * idx) + arg1 + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _15
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _18 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_18] == bool(mem[_18])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function getAmountOut(uint256 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg2)
    staticcall arg2.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(arg2)
    staticcall arg2.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != arg3:
        if arg1 <= Mask(112, 0, ext_call.return_data[0]):
            if not arg1:
                if 0 <= Mask(112, 0, ext_call.return_data[32]):
                    return 0, 1
            else:
                if not Mask(112, 0, ext_call.return_data[0]):
                    if 0 <= Mask(112, 0, ext_call.return_data[32]):
                        return 0, 1
                else:
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 0 <= Mask(112, 0, ext_call.return_data[32]):
                            return 0, 1
                    else:
                        if not arg1:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                revert with 'NH{q', 18
                            if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]):
                                revert with 'NH{q', 18
                            require 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) == 1000
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) > -1:
                                revert with 'NH{q', 17
                            require 1000 * Mask(112, 0, ext_call.return_data[0]) >= 1000 * Mask(112, 0, ext_call.return_data[0])
                            if not 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 'NH{q', 18
                            if 0 / 1000 * Mask(112, 0, ext_call.return_data[0]) <= Mask(112, 0, ext_call.return_data[32]):
                                return 0 / 1000 * Mask(112, 0, ext_call.return_data[0]), 1
                        else:
                            if arg1 and 997 > -1 / arg1:
                                revert with 'NH{q', 17
                            if not arg1:
                                revert with 'NH{q', 18
                            require 997 * arg1 / arg1 == 997
                            if not 997 * arg1:
                                if not Mask(112, 0, ext_call.return_data[0]):
                                    if 0 > (-997 * arg1) - 1:
                                        revert with 'NH{q', 17
                                    require 997 * arg1 >= 0
                                    if not 997 * arg1:
                                        revert with 'NH{q', 18
                                    if 0 / 997 * arg1 <= Mask(112, 0, ext_call.return_data[32]):
                                        return 0 / 997 * arg1, 1
                                else:
                                    if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                                        revert with 'NH{q', 17
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        revert with 'NH{q', 18
                                    require 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) == 1000
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * arg1) - 1:
                                        revert with 'NH{q', 17
                                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) >= 1000 * Mask(112, 0, ext_call.return_data[0])
                                    if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1):
                                        revert with 'NH{q', 18
                                    if 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) <= Mask(112, 0, ext_call.return_data[32]):
                                        return 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1), 1
                            else:
                                if 997 * arg1 and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * arg1:
                                    revert with 'NH{q', 17
                                if not 997 * arg1:
                                    revert with 'NH{q', 18
                                require 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / 997 * arg1 == Mask(112, 0, ext_call.return_data[32])
                                if not Mask(112, 0, ext_call.return_data[0]):
                                    if 0 > (-997 * arg1) - 1:
                                        revert with 'NH{q', 17
                                    require 997 * arg1 >= 0
                                    if not 997 * arg1:
                                        revert with 'NH{q', 18
                                    if 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / 997 * arg1 <= Mask(112, 0, ext_call.return_data[32]):
                                        return 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / 997 * arg1, 1
                                else:
                                    if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                                        revert with 'NH{q', 17
                                    if not Mask(112, 0, ext_call.return_data[0]):
                                        revert with 'NH{q', 18
                                    require 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) == 1000
                                    if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * arg1) - 1:
                                        revert with 'NH{q', 17
                                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) >= 1000 * Mask(112, 0, ext_call.return_data[0])
                                    if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1):
                                        revert with 'NH{q', 18
                                    if 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) <= Mask(112, 0, ext_call.return_data[32]):
                                        return 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1), 1
    else:
        if arg1 <= Mask(112, 0, ext_call.return_data[32]):
            if arg1:
                if Mask(112, 0, ext_call.return_data[32]):
                    if Mask(112, 0, ext_call.return_data[0]):
                        if not arg1:
                            if not Mask(112, 0, ext_call.return_data[32]):
                                revert with 'NH{q', 18
                            if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[32]):
                                revert with 'NH{q', 18
                            require 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) == 1000
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) > -1:
                                revert with 'NH{q', 17
                            require 1000 * Mask(112, 0, ext_call.return_data[32]) >= 1000 * Mask(112, 0, ext_call.return_data[32])
                            if not 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 'NH{q', 18
                            if 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) <= Mask(112, 0, ext_call.return_data[0]):
                                return 0 / 1000 * Mask(112, 0, ext_call.return_data[32]), 0
                        else:
                            if arg1 and 997 > -1 / arg1:
                                revert with 'NH{q', 17
                            if not arg1:
                                revert with 'NH{q', 18
                            require 997 * arg1 / arg1 == 997
                            if not 997 * arg1:
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    if 0 > (-997 * arg1) - 1:
                                        revert with 'NH{q', 17
                                    require 997 * arg1 >= 0
                                    if not 997 * arg1:
                                        revert with 'NH{q', 18
                                    if 0 / 997 * arg1 <= Mask(112, 0, ext_call.return_data[0]):
                                        return 0 / 997 * arg1, 0
                                else:
                                    if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                                        revert with 'NH{q', 17
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        revert with 'NH{q', 18
                                    require 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) == 1000
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * arg1) - 1:
                                        revert with 'NH{q', 17
                                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) >= 1000 * Mask(112, 0, ext_call.return_data[32])
                                    if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1):
                                        revert with 'NH{q', 18
                                    if 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) <= Mask(112, 0, ext_call.return_data[0]):
                                        return 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1), 0
                            else:
                                if 997 * arg1 and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * arg1:
                                    revert with 'NH{q', 17
                                if not 997 * arg1:
                                    revert with 'NH{q', 18
                                require 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / 997 * arg1 == Mask(112, 0, ext_call.return_data[0])
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    if 0 > (-997 * arg1) - 1:
                                        revert with 'NH{q', 17
                                    require 997 * arg1 >= 0
                                    if not 997 * arg1:
                                        revert with 'NH{q', 18
                                    if 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / 997 * arg1 <= Mask(112, 0, ext_call.return_data[0]):
                                        return 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / 997 * arg1, 0
                                else:
                                    if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                                        revert with 'NH{q', 17
                                    if not Mask(112, 0, ext_call.return_data[32]):
                                        revert with 'NH{q', 18
                                    require 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) == 1000
                                    if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * arg1) - 1:
                                        revert with 'NH{q', 17
                                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) >= 1000 * Mask(112, 0, ext_call.return_data[32])
                                    if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1):
                                        revert with 'NH{q', 18
                                    if 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) <= Mask(112, 0, ext_call.return_data[0]):
                                        return 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1), 0
    return 0
}

function sub_6f34a084(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == arg6
    require arg7 == arg7
    if admins[address(msg.sender)] != 1:
        revert with 0, 'no50'
    require ext_code.size(address(arg2))
    staticcall address(arg2).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg2))
    staticcall address(arg2).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != address(arg4):
        require arg1 <= Mask(112, 0, ext_call.return_data[0])
        require arg1
        require Mask(112, 0, ext_call.return_data[0])
        require Mask(112, 0, ext_call.return_data[32])
        if not arg1:
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 18
            if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 18
            require 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) == 1000
            if 1000 * Mask(112, 0, ext_call.return_data[0]) > -1:
                revert with 'NH{q', 17
            require 1000 * Mask(112, 0, ext_call.return_data[0]) >= 1000 * Mask(112, 0, ext_call.return_data[0])
            if not 1000 * Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 18
            require 0 / 1000 * Mask(112, 0, ext_call.return_data[0]) <= Mask(112, 0, ext_call.return_data[32])
            require 0 / 1000 * Mask(112, 0, ext_call.return_data[0]) > 0
            if arg7:
                require 0 / 1000 * Mask(112, 0, ext_call.return_data[0]) >= arg7
            require ext_code.size(address(arg4))
            if arg6 == 1:
                call address(arg4).deposit() with:
                   value arg1 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            call address(arg4).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 260 len arg3.length] = arg3[all]
            mem[(4 * ceil32(return_data.size)) + arg3.length + 260] = 0
            require ext_code.size(address(arg2))
            call address(arg2).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, 0 / 1000 * Mask(112, 0, ext_call.return_data[0]), address(this.address), 128, arg3.length, arg3[all], mem[(4 * ceil32(return_data.size)) + arg3.length + 260 len ceil32(arg3.length) - arg3.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg6 == 2:
                require ext_code.size(address(arg5))
                call address(arg5).0x2e1a7d4d with:
                     gas gas_remaining wei
                    args (0 / 1000 * Mask(112, 0, ext_call.return_data[0]))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return (0 / 1000 * Mask(112, 0, ext_call.return_data[0]))
        if arg1 and 997 > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        require 997 * arg1 / arg1 == 997
        if not 997 * arg1:
            if not Mask(112, 0, ext_call.return_data[0]):
                if 0 > (-997 * arg1) - 1:
                    revert with 'NH{q', 17
                require 997 * arg1 >= 0
                if not 997 * arg1:
                    revert with 'NH{q', 18
                require 0 / 997 * arg1 <= Mask(112, 0, ext_call.return_data[32])
                require 0 / 997 * arg1 > 0
                if arg7:
                    require 0 / 997 * arg1 >= arg7
                require ext_code.size(address(arg4))
                if arg6 == 1:
                    call address(arg4).deposit() with:
                       value arg1 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call address(arg4).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg2), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 260 len arg3.length] = arg3[all]
                mem[(4 * ceil32(return_data.size)) + arg3.length + 260] = 0
                require ext_code.size(address(arg2))
                call address(arg2).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, 0 / 997 * arg1, address(this.address), 128, arg3.length, arg3[all], mem[(4 * ceil32(return_data.size)) + arg3.length + 260 len ceil32(arg3.length) - arg3.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg6 == 2:
                    require ext_code.size(address(arg5))
                    call address(arg5).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args (0 / 997 * arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                return (0 / 997 * arg1)
            if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 18
            require 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) == 1000
            if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * arg1) - 1:
                revert with 'NH{q', 17
            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) >= 1000 * Mask(112, 0, ext_call.return_data[0])
            if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1):
                revert with 'NH{q', 18
            require 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) <= Mask(112, 0, ext_call.return_data[32])
            require 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) > 0
            if arg7:
                require 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) >= arg7
            require ext_code.size(address(arg4))
            if arg6 == 1:
                call address(arg4).deposit() with:
                   value arg1 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            call address(arg4).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 260 len arg3.length] = arg3[all]
            mem[(4 * ceil32(return_data.size)) + arg3.length + 260] = 0
            require ext_code.size(address(arg2))
            call address(arg2).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1), address(this.address), 128, arg3.length, arg3[all], mem[(4 * ceil32(return_data.size)) + arg3.length + 260 len ceil32(arg3.length) - arg3.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg6 == 2:
                require ext_code.size(address(arg5))
                call address(arg5).0x2e1a7d4d with:
                     gas gas_remaining wei
                    args (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))
        if 997 * arg1 and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * arg1:
            revert with 'NH{q', 17
        if not 997 * arg1:
            revert with 'NH{q', 18
        require 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / 997 * arg1 == Mask(112, 0, ext_call.return_data[32])
        if not Mask(112, 0, ext_call.return_data[0]):
            if 0 > (-997 * arg1) - 1:
                revert with 'NH{q', 17
            require 997 * arg1 >= 0
            if not 997 * arg1:
                revert with 'NH{q', 18
            require 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / 997 * arg1 <= Mask(112, 0, ext_call.return_data[32])
            require 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / 997 * arg1 > 0
            if arg7:
                require 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / 997 * arg1 >= arg7
            require ext_code.size(address(arg4))
            if arg6 == 1:
                call address(arg4).deposit() with:
                   value arg1 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            call address(arg4).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 260 len arg3.length] = arg3[all]
            mem[(4 * ceil32(return_data.size)) + arg3.length + 260] = 0
            require ext_code.size(address(arg2))
            call address(arg2).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / 997 * arg1, address(this.address), 128, arg3.length, arg3[all], mem[(4 * ceil32(return_data.size)) + arg3.length + 260 len ceil32(arg3.length) - arg3.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg6 == 2:
                require ext_code.size(address(arg5))
                call address(arg5).0x2e1a7d4d with:
                     gas gas_remaining wei
                    args (997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / 997 * arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return (997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / 997 * arg1)
        if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 18
        require 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) == 1000
        if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * arg1) - 1:
            revert with 'NH{q', 17
        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) >= 1000 * Mask(112, 0, ext_call.return_data[0])
        if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1):
            revert with 'NH{q', 18
        require 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) <= Mask(112, 0, ext_call.return_data[32])
        require 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) > 0
        if arg7:
            require 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) >= arg7
        require ext_code.size(address(arg4))
        if arg6 == 1:
            call address(arg4).deposit() with:
               value arg1 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        call address(arg4).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 260 len arg3.length] = arg3[all]
        mem[(4 * ceil32(return_data.size)) + arg3.length + 260] = 0
        require ext_code.size(address(arg2))
        call address(arg2).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1), address(this.address), 128, arg3.length, arg3[all], mem[(4 * ceil32(return_data.size)) + arg3.length + 260 len ceil32(arg3.length) - arg3.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg6 == 2:
            require ext_code.size(address(arg5))
            call address(arg5).0x2e1a7d4d with:
                 gas gas_remaining wei
                args (997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return (997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))
    require arg1 <= Mask(112, 0, ext_call.return_data[32])
    require arg1
    require Mask(112, 0, ext_call.return_data[32])
    require Mask(112, 0, ext_call.return_data[0])
    if not arg1:
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 18
        if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 17
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 18
        require 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) == 1000
        if 1000 * Mask(112, 0, ext_call.return_data[32]) > -1:
            revert with 'NH{q', 17
        require 1000 * Mask(112, 0, ext_call.return_data[32]) >= 1000 * Mask(112, 0, ext_call.return_data[32])
        if not 1000 * Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 18
        require 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) <= Mask(112, 0, ext_call.return_data[0])
        require 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) > 0
        if arg7:
            require 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) >= arg7
        require ext_code.size(address(arg4))
        if arg6 == 1:
            call address(arg4).deposit() with:
               value arg1 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        call address(arg4).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 260 len arg3.length] = arg3[all]
        mem[(4 * ceil32(return_data.size)) + arg3.length + 260] = 0
        require ext_code.size(address(arg2))
        call address(arg2).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0 / 1000 * Mask(112, 0, ext_call.return_data[32]), 0, address(this.address), 128, arg3.length, arg3[all], mem[(4 * ceil32(return_data.size)) + arg3.length + 260 len ceil32(arg3.length) - arg3.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg6 == 2:
            require ext_code.size(address(arg5))
            call address(arg5).0x2e1a7d4d with:
                 gas gas_remaining wei
                args (0 / 1000 * Mask(112, 0, ext_call.return_data[32]))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return (0 / 1000 * Mask(112, 0, ext_call.return_data[32]))
    if arg1 and 997 > -1 / arg1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    require 997 * arg1 / arg1 == 997
    if not 997 * arg1:
        if not Mask(112, 0, ext_call.return_data[32]):
            if 0 > (-997 * arg1) - 1:
                revert with 'NH{q', 17
            require 997 * arg1 >= 0
            if not 997 * arg1:
                revert with 'NH{q', 18
            require 0 / 997 * arg1 <= Mask(112, 0, ext_call.return_data[0])
            require 0 / 997 * arg1 > 0
            if arg7:
                require 0 / 997 * arg1 >= arg7
            require ext_code.size(address(arg4))
            if arg6 == 1:
                call address(arg4).deposit() with:
                   value arg1 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            call address(arg4).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 260 len arg3.length] = arg3[all]
            mem[(4 * ceil32(return_data.size)) + arg3.length + 260] = 0
            require ext_code.size(address(arg2))
            call address(arg2).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0 / 997 * arg1, 0, address(this.address), 128, arg3.length, arg3[all], mem[(4 * ceil32(return_data.size)) + arg3.length + 260 len ceil32(arg3.length) - arg3.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg6 == 2:
                require ext_code.size(address(arg5))
                call address(arg5).0x2e1a7d4d with:
                     gas gas_remaining wei
                    args (0 / 997 * arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return (0 / 997 * arg1)
        if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 17
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 18
        require 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) == 1000
        if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * arg1) - 1:
            revert with 'NH{q', 17
        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) >= 1000 * Mask(112, 0, ext_call.return_data[32])
        if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1):
            revert with 'NH{q', 18
        require 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) <= Mask(112, 0, ext_call.return_data[0])
        require 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) > 0
        if arg7:
            require 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) >= arg7
        require ext_code.size(address(arg4))
        if arg6 == 1:
            call address(arg4).deposit() with:
               value arg1 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        call address(arg4).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 260 len arg3.length] = arg3[all]
        mem[(4 * ceil32(return_data.size)) + arg3.length + 260] = 0
        require ext_code.size(address(arg2))
        call address(arg2).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1), 0, address(this.address), 128, arg3.length, arg3[all], mem[(4 * ceil32(return_data.size)) + arg3.length + 260 len ceil32(arg3.length) - arg3.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg6 == 2:
            require ext_code.size(address(arg5))
            call address(arg5).0x2e1a7d4d with:
                 gas gas_remaining wei
                args (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))
    if 997 * arg1 and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * arg1:
        revert with 'NH{q', 17
    if not 997 * arg1:
        revert with 'NH{q', 18
    require 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / 997 * arg1 == Mask(112, 0, ext_call.return_data[0])
    if not Mask(112, 0, ext_call.return_data[32]):
        if 0 > (-997 * arg1) - 1:
            revert with 'NH{q', 17
        require 997 * arg1 >= 0
        if not 997 * arg1:
            revert with 'NH{q', 18
        require 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / 997 * arg1 <= Mask(112, 0, ext_call.return_data[0])
        require 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / 997 * arg1 > 0
        if arg7:
            require 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / 997 * arg1 >= arg7
        require ext_code.size(address(arg4))
        if arg6 == 1:
            call address(arg4).deposit() with:
               value arg1 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        call address(arg4).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 260 len arg3.length] = arg3[all]
        mem[(4 * ceil32(return_data.size)) + arg3.length + 260] = 0
        require ext_code.size(address(arg2))
        call address(arg2).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / 997 * arg1, 0, address(this.address), 128, arg3.length, arg3[all], mem[(4 * ceil32(return_data.size)) + arg3.length + 260 len ceil32(arg3.length) - arg3.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg6 == 2:
            require ext_code.size(address(arg5))
            call address(arg5).0x2e1a7d4d with:
                 gas gas_remaining wei
                args (997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / 997 * arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return (997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / 997 * arg1)
    if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
        revert with 'NH{q', 17
    if not Mask(112, 0, ext_call.return_data[32]):
        revert with 'NH{q', 18
    require 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) == 1000
    if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * arg1) - 1:
        revert with 'NH{q', 17
    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) >= 1000 * Mask(112, 0, ext_call.return_data[32])
    if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1):
        revert with 'NH{q', 18
    require 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) <= Mask(112, 0, ext_call.return_data[0])
    require 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) > 0
    if arg7:
        require 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) >= arg7
    require ext_code.size(address(arg4))
    if arg6 == 1:
        call address(arg4).deposit() with:
           value arg1 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    call address(arg4).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 260 len arg3.length] = arg3[all]
    mem[(4 * ceil32(return_data.size)) + arg3.length + 260] = 0
    require ext_code.size(address(arg2))
    call address(arg2).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining wei
        args 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1), 0, address(this.address), 128, arg3.length, arg3[all], mem[(4 * ceil32(return_data.size)) + arg3.length + 260 len ceil32(arg3.length) - arg3.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg6 == 2:
        require ext_code.size(address(arg5))
        call address(arg5).0x2e1a7d4d with:
             gas gas_remaining wei
            args (997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return (997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))
}



}
