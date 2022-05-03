contract main {




// =====================  Runtime code  =====================


const sub_4229dbe3(?) = eth.balance(this.address)


uint16 stor0;
address stor0;
address owner; offset 16
mapping of address tokenList;
mapping of uint256 sub_ba27f50b;
uint256 stor3;
mapping of uint8 stor4;
mapping of uint256 target;
uint256 stor6;

function owner() {
    return owner
}

function tokenList(uint256 arg1) {
    require calldata.size - 4 >= 32
    return tokenList[arg1]
}

function sub_ba27f50b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_ba27f50b[arg1]
}

function target(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return target[arg1]
}

function whiteListed(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[arg1])
}

function addWhite(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = 1
}

function sub_d5d7ff3c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    target[address(arg1)] = 0
}

function removeWhite(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = 0
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint16(stor0.field_0) > 65534:
        revert with 0, 17
    uint16(stor0.field_0) = uint16(uint16(stor0.field_0) + 1)
    if uint16(stor0.field_0) >= 3:
        owner = arg1
}

function withdrawAllMoney() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) <= 0:
        revert with 0, 'balance is 0'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function balanceOfToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_51663fd4(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    target[address(arg1)] = arg2
    if not sub_ba27f50b[address(arg1)]:
        if stor3 > -2:
            revert with 0, 17
        stor3++
        sub_ba27f50b[address(arg1)] = stor3
        tokenList[stor3] = address(arg1)
}

function withdrawNFT(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args this.address, address(stor0.field_0), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_30a01c4e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        return ext_call.return_data[0]
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if not 10^ext_call.return_data[31 len 1]:
            revert with 0, 18
        return (ext_call.return_data[0] / 10^ext_call.return_data[31 len 1])
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    return (ext_call.return_data[0] / s * t)
}

function sub_f43cf9e6(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if arg2 and 1 > -1 / arg2:
            revert with 0, 17
        require ext_code.size(address(arg1))
        call address(arg1).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg2
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                revert with 0, 17
            require ext_code.size(address(arg1))
            call address(arg1).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg2 * 10^uint8(ext_call.return_data[0])
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if arg2 and s * t > -1 / arg2:
                revert with 0, 17
            require ext_code.size(address(arg1))
            call address(arg1).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg2 * s * t
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if arg2 and 1 > -1 / arg2:
            revert with 0, 17
        require ext_code.size(arg1)
        if arg2:
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(stor0.field_0), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(stor0.field_0), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                revert with 0, 17
            require ext_code.size(arg1)
            if arg2 * 10^ext_call.return_data[31 len 1]:
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(stor0.field_0), arg2 * 10^uint8(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor0.field_0), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if arg2 and s * t > -1 / arg2:
                revert with 0, 17
            require ext_code.size(arg1)
            if arg2 * s * t:
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(stor0.field_0), arg2 * s * t
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor0.field_0), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawAllToken() payable {
    mem[64] = 96
    require not msg.value
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 1
    while idx <= stor3:
        mem[0] = idx
        mem[32] = 1
        require ext_code.size(tokenList[idx])
        staticcall tokenList[idx].0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _51 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_51] == mem[_51 + 31 len 1]
        if not mem[_51 + 31 len 1]:
            mem[mem[64] + 4] = this.address
            require ext_code.size(tokenList[idx])
            staticcall tokenList[idx].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _55 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _56 = mem[_55]
            if mem[_55]:
                mem[mem[64] + 4] = owner
                mem[mem[64] + 36] = _56
                require ext_code.size(tokenList[idx])
                call tokenList[idx].0xa9059cbb with:
                     gas gas_remaining wei
                    args address(stor0.field_0), _56
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _65 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_65] == bool(mem[_65])
        else:
            if bool(bool(mem[_51 + 31 len 1] < 78)) or bool(bool(mem[_51 + 31 len 1] < 32)):
                if False and 10^mem[_51 + 31 len 1] > 0:
                    revert with 0, 17
                mem[mem[64] + 4] = this.address
                require ext_code.size(tokenList[idx])
                staticcall tokenList[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _59 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _64 = mem[_59]
                if mem[_59]:
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _64
                    require ext_code.size(tokenList[idx])
                    call tokenList[idx].0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor0.field_0), _64
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _76 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_76] == bool(mem[_76])
            else:
                t = 10
                u = 1
                s = mem[_51 + 31 len 1]
                while s > 1:
                    if t > -1 / t:
                        revert with 0, 17
                    if not bool(s):
                        t = t * t
                        u = u
                        s = uint255(s) * 0.5
                        continue 
                    t = t * t
                    u = t * u
                    s = uint255(s) * 0.5
                    continue 
                if u > -1 / t:
                    revert with 0, 17
                if False and t * u > 0:
                    revert with 0, 17
                mem[mem[64] + 4] = this.address
                require ext_code.size(tokenList[idx])
                staticcall tokenList[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _95 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _96 = mem[_95]
                if mem[_95]:
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _96
                    require ext_code.size(tokenList[idx])
                    call tokenList[idx].0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor0.field_0), _96
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _99 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_99] == bool(mem[_99])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_523c339d(?) {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    if not stor4[msg.sender]:
        revert with 0, 'white only'
    mem[100] = this.address
    require ext_code.size(address(arg4))
    staticcall address(arg4).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[0] = address(arg4)
    mem[32] = 5
    if not arg2:
        if ext_call.return_data[0] > target[address(arg4)]:
            revert with 0, 'target not enough'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'amount_in is 0'
        mem[ceil32(return_data.size) + 100] = this.address
        mem[ceil32(return_data.size) + 132] = address(arg1)
        require ext_code.size(address(arg4))
        staticcall address(arg4).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(arg1)
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= ext_call.return_data[0]:
            mem[(2 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(arg5))
            staticcall address(arg5).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 96] = 2
            mem[(4 * ceil32(return_data.size)) + 128] = address(arg4)
            mem[(4 * ceil32(return_data.size)) + 160] = address(arg5)
            mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 228] = arg3
            mem[(4 * ceil32(return_data.size)) + 260] = 160
            mem[(4 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + 388
            t = (4 * ceil32(return_data.size)) + 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 292] = this.address
            mem[(4 * ceil32(return_data.size)) + 324] = stor6
            require ext_code.size(address(arg1))
            call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(this.address), stor6
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _363 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
            require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
            _369 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                revert with 0, 65
            if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                revert with 0, 65
            mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
            mem[(6 * ceil32(return_data.size)) + 192] = _369
            require return_data.size >= _363 + (32 * _369) + 32
            mem[(6 * ceil32(return_data.size)) + 224 len 32 * _369] = mem[(4 * ceil32(return_data.size)) + _363 + 224 len 32 * _369]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg5))
            staticcall address(arg5).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _603 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if ext_call.return_data[0] > mem[_603]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if mem[_603] < ext_call.return_data[0]:
                revert with 0, 17
            if mem[_603] - ext_call.return_data[0] <= 0:
                revert with 0, 'change balance is 0'
            if target[address(arg4)] < ext_call.return_data[0]:
                revert with 0, 17
            target[address(arg4)] -= ext_call.return_data[0]
            if arg6 <= mem[_603] - ext_call.return_data[0]:
                if target[address(arg5)] > !arg6:
                    revert with 0, 17
                target[address(arg5)] += arg6
            else:
                if target[address(arg5)] > !(mem[_603] - ext_call.return_data[0]):
                    revert with 0, 17
                target[address(arg5)] = target[address(arg5)] + mem[_603] - ext_call.return_data[0]
        else:
            mem[(2 * ceil32(return_data.size)) + 100] = address(arg1)
            mem[(2 * ceil32(return_data.size)) + 132] = test266151307()
            require ext_code.size(address(arg4))
            call address(arg4).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), test266151307()
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(arg5))
            staticcall address(arg5).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(6 * ceil32(return_data.size)) + 96] = 2
            mem[(6 * ceil32(return_data.size)) + 128] = address(arg4)
            mem[(6 * ceil32(return_data.size)) + 160] = address(arg5)
            mem[(6 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 228] = arg3
            mem[(6 * ceil32(return_data.size)) + 260] = 160
            mem[(6 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (6 * ceil32(return_data.size)) + 388
            t = (6 * ceil32(return_data.size)) + 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(6 * ceil32(return_data.size)) + 292] = this.address
            mem[(6 * ceil32(return_data.size)) + 324] = stor6
            require ext_code.size(address(arg1))
            call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], arg3, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 388 len 64]), address(this.address), stor6
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (7 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _364 = mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
            require mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
            _370 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
            if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                revert with 0, 65
            if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                revert with 0, 65
            mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
            mem[(7 * ceil32(return_data.size)) + 192] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
            require return_data.size >= _364 + (32 * _370) + 32
            mem[(7 * ceil32(return_data.size)) + 224 len 32 * _370] = mem[(6 * ceil32(return_data.size)) + _364 + 224 len 32 * _370]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg5))
            staticcall address(arg5).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _604 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if ext_call.return_data[0] > mem[_604]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if mem[_604] < ext_call.return_data[0]:
                revert with 0, 17
            if mem[_604] - ext_call.return_data[0] <= 0:
                revert with 0, 'change balance is 0'
            if target[address(arg4)] < ext_call.return_data[0]:
                revert with 0, 17
            target[address(arg4)] -= ext_call.return_data[0]
            if arg6 <= mem[_604] - ext_call.return_data[0]:
                if target[address(arg5)] > !arg6:
                    revert with 0, 17
                target[address(arg5)] += arg6
            else:
                if target[address(arg5)] > !(mem[_604] - ext_call.return_data[0]):
                    revert with 0, 17
                target[address(arg5)] = target[address(arg5)] + mem[_604] - ext_call.return_data[0]
    else:
        if ext_call.return_data[0] >= arg2:
            if arg2 > target[address(arg4)]:
                revert with 0, 'target not enough'
            if arg2 <= 0:
                revert with 0, 'amount_in is 0'
            mem[ceil32(return_data.size) + 100] = this.address
            mem[ceil32(return_data.size) + 132] = address(arg1)
            require ext_code.size(address(arg4))
            staticcall address(arg4).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(arg1)
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= arg2:
                mem[(2 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(address(arg5))
                staticcall address(arg5).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(4 * ceil32(return_data.size)) + 96] = 2
                mem[(4 * ceil32(return_data.size)) + 128] = address(arg4)
                mem[(4 * ceil32(return_data.size)) + 160] = address(arg5)
                mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = arg2
                mem[(4 * ceil32(return_data.size)) + 228] = arg3
                mem[(4 * ceil32(return_data.size)) + 260] = 160
                mem[(4 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (4 * ceil32(return_data.size)) + 388
                t = (4 * ceil32(return_data.size)) + 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + 292] = this.address
                mem[(4 * ceil32(return_data.size)) + 324] = stor6
                require ext_code.size(address(arg1))
                call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(this.address), stor6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _359 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                _365 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                    revert with 0, 65
                if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                mem[(6 * ceil32(return_data.size)) + 192] = _365
                require return_data.size >= _359 + (32 * _365) + 32
                mem[(6 * ceil32(return_data.size)) + 224 len 32 * _365] = mem[(4 * ceil32(return_data.size)) + _359 + 224 len 32 * _365]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg5))
                staticcall address(arg5).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _599 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if ext_call.return_data[0] > mem[_599]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if mem[_599] < ext_call.return_data[0]:
                    revert with 0, 17
                if mem[_599] - ext_call.return_data[0] <= 0:
                    revert with 0, 'change balance is 0'
                if target[address(arg4)] < arg2:
                    revert with 0, 17
                target[address(arg4)] -= arg2
                if arg6 <= mem[_599] - ext_call.return_data[0]:
                    if target[address(arg5)] > !arg6:
                        revert with 0, 17
                    target[address(arg5)] += arg6
                else:
                    if target[address(arg5)] > !(mem[_599] - ext_call.return_data[0]):
                        revert with 0, 17
                    target[address(arg5)] = target[address(arg5)] + mem[_599] - ext_call.return_data[0]
            else:
                mem[(2 * ceil32(return_data.size)) + 100] = address(arg1)
                mem[(2 * ceil32(return_data.size)) + 132] = test266151307()
                require ext_code.size(address(arg4))
                call address(arg4).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), test266151307()
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(address(arg5))
                staticcall address(arg5).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(6 * ceil32(return_data.size)) + 96] = 2
                mem[(6 * ceil32(return_data.size)) + 128] = address(arg4)
                mem[(6 * ceil32(return_data.size)) + 160] = address(arg5)
                mem[(6 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 196] = arg2
                mem[(6 * ceil32(return_data.size)) + 228] = arg3
                mem[(6 * ceil32(return_data.size)) + 260] = 160
                mem[(6 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + 388
                t = (6 * ceil32(return_data.size)) + 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + 292] = this.address
                mem[(6 * ceil32(return_data.size)) + 324] = stor6
                require ext_code.size(address(arg1))
                call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, arg3, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 388 len 64]), address(this.address), stor6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _360 = mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                require mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
                _366 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                    revert with 0, 65
                if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                mem[(7 * ceil32(return_data.size)) + 192] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                require return_data.size >= _360 + (32 * _366) + 32
                mem[(7 * ceil32(return_data.size)) + 224 len 32 * _366] = mem[(6 * ceil32(return_data.size)) + _360 + 224 len 32 * _366]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg5))
                staticcall address(arg5).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _600 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if ext_call.return_data[0] > mem[_600]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if mem[_600] < ext_call.return_data[0]:
                    revert with 0, 17
                if mem[_600] - ext_call.return_data[0] <= 0:
                    revert with 0, 'change balance is 0'
                if target[address(arg4)] < arg2:
                    revert with 0, 17
                target[address(arg4)] -= arg2
                if arg6 <= mem[_600] - ext_call.return_data[0]:
                    if target[address(arg5)] > !arg6:
                        revert with 0, 17
                    target[address(arg5)] += arg6
                else:
                    if target[address(arg5)] > !(mem[_600] - ext_call.return_data[0]):
                        revert with 0, 17
                    target[address(arg5)] = target[address(arg5)] + mem[_600] - ext_call.return_data[0]
        else:
            if ext_call.return_data[0] > target[address(arg4)]:
                revert with 0, 'target not enough'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'amount_in is 0'
            mem[ceil32(return_data.size) + 100] = this.address
            mem[ceil32(return_data.size) + 132] = address(arg1)
            require ext_code.size(address(arg4))
            staticcall address(arg4).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(arg1)
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= ext_call.return_data[0]:
                mem[(2 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(address(arg5))
                staticcall address(arg5).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(4 * ceil32(return_data.size)) + 96] = 2
                mem[(4 * ceil32(return_data.size)) + 128] = address(arg4)
                mem[(4 * ceil32(return_data.size)) + 160] = address(arg5)
                mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 228] = arg3
                mem[(4 * ceil32(return_data.size)) + 260] = 160
                mem[(4 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (4 * ceil32(return_data.size)) + 388
                t = (4 * ceil32(return_data.size)) + 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + 292] = this.address
                mem[(4 * ceil32(return_data.size)) + 324] = stor6
                require ext_code.size(address(arg1))
                call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(this.address), stor6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _361 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                _367 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                    revert with 0, 65
                if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                mem[(6 * ceil32(return_data.size)) + 192] = _367
                require return_data.size >= _361 + (32 * _367) + 32
                mem[(6 * ceil32(return_data.size)) + 224 len 32 * _367] = mem[(4 * ceil32(return_data.size)) + _361 + 224 len 32 * _367]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg5))
                staticcall address(arg5).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _601 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if ext_call.return_data[0] > mem[_601]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if mem[_601] < ext_call.return_data[0]:
                    revert with 0, 17
                if mem[_601] - ext_call.return_data[0] <= 0:
                    revert with 0, 'change balance is 0'
                if target[address(arg4)] < ext_call.return_data[0]:
                    revert with 0, 17
                target[address(arg4)] -= ext_call.return_data[0]
                if arg6 <= mem[_601] - ext_call.return_data[0]:
                    if target[address(arg5)] > !arg6:
                        revert with 0, 17
                    target[address(arg5)] += arg6
                else:
                    if target[address(arg5)] > !(mem[_601] - ext_call.return_data[0]):
                        revert with 0, 17
                    target[address(arg5)] = target[address(arg5)] + mem[_601] - ext_call.return_data[0]
            else:
                mem[(2 * ceil32(return_data.size)) + 100] = address(arg1)
                mem[(2 * ceil32(return_data.size)) + 132] = test266151307()
                require ext_code.size(address(arg4))
                call address(arg4).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), test266151307()
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(address(arg5))
                staticcall address(arg5).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(6 * ceil32(return_data.size)) + 96] = 2
                mem[(6 * ceil32(return_data.size)) + 128] = address(arg4)
                mem[(6 * ceil32(return_data.size)) + 160] = address(arg5)
                mem[(6 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 228] = arg3
                mem[(6 * ceil32(return_data.size)) + 260] = 160
                mem[(6 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + 388
                t = (6 * ceil32(return_data.size)) + 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + 292] = this.address
                mem[(6 * ceil32(return_data.size)) + 324] = stor6
                require ext_code.size(address(arg1))
                call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], arg3, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 388 len 64]), address(this.address), stor6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _362 = mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                require mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
                _368 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                    revert with 0, 65
                if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                mem[(7 * ceil32(return_data.size)) + 192] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                require return_data.size >= _362 + (32 * _368) + 32
                mem[(7 * ceil32(return_data.size)) + 224 len 32 * _368] = mem[(6 * ceil32(return_data.size)) + _362 + 224 len 32 * _368]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg5))
                staticcall address(arg5).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _602 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if ext_call.return_data[0] > mem[_602]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if mem[_602] < ext_call.return_data[0]:
                    revert with 0, 17
                if mem[_602] - ext_call.return_data[0] <= 0:
                    revert with 0, 'change balance is 0'
                if target[address(arg4)] < ext_call.return_data[0]:
                    revert with 0, 17
                target[address(arg4)] -= ext_call.return_data[0]
                if arg6 <= mem[_602] - ext_call.return_data[0]:
                    if target[address(arg5)] > !arg6:
                        revert with 0, 17
                    target[address(arg5)] += arg6
                else:
                    if target[address(arg5)] > !(mem[_602] - ext_call.return_data[0]):
                        revert with 0, 17
                    target[address(arg5)] = target[address(arg5)] + mem[_602] - ext_call.return_data[0]
    if not sub_ba27f50b[address(arg4)]:
        if stor3 > -2:
            revert with 0, 17
        stor3++
        sub_ba27f50b[address(arg4)] = stor3
        tokenList[stor3] = address(arg4)
    if not sub_ba27f50b[address(arg5)]:
        if stor3 > -2:
            revert with 0, 17
        stor3++
        sub_ba27f50b[address(arg5)] = stor3
        tokenList[stor3] = address(arg5)
}

function _fallback() payable {
    mem[64] = 128
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x8da5cb5b(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xd5d7ff3c(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xd5d7ff3c(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    target[address(arg1)] = 0
                else:
                    if unknown_0xdad69c20(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        stor4[address(arg1)] = 0
                    else:
                        if unknown_0xdad9da8a(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            return target[arg1]
                        if uint32(call.func_hash) >> 224 != unknown_0xf43cf9e6(?????):
                            require unknown_0xfa0fca84(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            return bool(stor4[arg1])
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not ext_call.return_data[31 len 1]:
                            if arg2 and 1 > -1 / arg2:
                                revert with 0, 17
                            require ext_code.size(address(arg1))
                            call address(arg1).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                        else:
                            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                                    revert with 0, 17
                                require ext_code.size(address(arg1))
                                call address(arg1).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, arg2 * 10^uint8(ext_call.return_data[0])
                            else:
                                s = 10
                                t = 1
                                idx = ext_call.return_data[31 len 1]
                                while idx > 1:
                                    if s > -1 / s:
                                        revert with 0, 17
                                    if not bool(idx):
                                        s = s * s
                                        t = t
                                        idx = uint255(idx) * 0.5
                                        continue 
                                    s = s * s
                                    t = s * t
                                    idx = uint255(idx) * 0.5
                                    continue 
                                if t > -1 / s:
                                    revert with 0, 17
                                if arg2 and s * t > -1 / arg2:
                                    revert with 0, 17
                                require ext_code.size(address(arg1))
                                call address(arg1).0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, arg2 * s * t
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                if uint32(call.func_hash) >> 224 != unknown_0x9e281a98(?????):
                    if unknown_0x9ead7222(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        return tokenList[arg1]
                    if uint32(call.func_hash) >> 224 != unknown_0xb99152d0(?????):
                        require unknown_0xba27f50b(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return sub_ba27f50b[arg1]
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if arg2 and 1 > -1 / arg2:
                        revert with 0, 17
                    require ext_code.size(address(arg1))
                    if arg2:
                        call address(arg1).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor0.field_0), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor0.field_0), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                            revert with 0, 17
                        require ext_code.size(address(arg1))
                        if arg2 * 10^ext_call.return_data[31 len 1]:
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor0.field_0), arg2 * 10^uint8(ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(address(arg1))
                                call address(arg1).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(stor0.field_0), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        if arg2 and s * t > -1 / arg2:
                            revert with 0, 17
                        require ext_code.size(address(arg1))
                        if arg2 * s * t:
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor0.field_0), arg2 * s * t
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(address(arg1))
                                call address(arg1).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(stor0.field_0), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if unknown_0x4229dbe3(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x13af4035(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if uint16(stor0.field_0) > 65534:
                        revert with 0, 17
                    uint16(stor0.field_0) = uint16(uint16(stor0.field_0) + 1)
                    if uint16(stor0.field_0) >= 3:
                        owner = address(arg1)
                if unknown_0x14870d2c(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    idx = 1
                    while idx <= stor3:
                        mem[0] = idx
                        mem[32] = 1
                        require ext_code.size(tokenList[idx])
                        staticcall tokenList[idx].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _559 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_559] == mem[_559 + 31 len 1]
                        if not mem[_559 + 31 len 1]:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenList[idx])
                            staticcall tokenList[idx].0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _633 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _641 = mem[_633]
                            if mem[_633]:
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _641
                                require ext_code.size(tokenList[idx])
                                call tokenList[idx].0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(stor0.field_0), _641
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _675 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_675] == bool(mem[_675])
                        else:
                            if bool(bool(mem[_559 + 31 len 1] < 78)) or bool(bool(mem[_559 + 31 len 1] < 32)):
                                if False and 10^mem[_559 + 31 len 1] > 0:
                                    revert with 0, 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenList[idx])
                                staticcall tokenList[idx].0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _657 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _668 = mem[_657]
                                if mem[_657]:
                                    mem[mem[64] + 4] = owner
                                    mem[mem[64] + 36] = _668
                                    require ext_code.size(tokenList[idx])
                                    call tokenList[idx].0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(stor0.field_0), _668
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _710 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_710] == bool(mem[_710])
                            else:
                                t = 10
                                u = 1
                                s = mem[_559 + 31 len 1]
                                while s > 1:
                                    if t > -1 / t:
                                        revert with 0, 17
                                    if not bool(s):
                                        t = t * t
                                        u = u
                                        s = uint255(s) * 0.5
                                        continue 
                                    t = t * t
                                    u = t * u
                                    s = uint255(s) * 0.5
                                    continue 
                                if u > -1 / t:
                                    revert with 0, 17
                                if False and t * u > 0:
                                    revert with 0, 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenList[idx])
                                staticcall tokenList[idx].0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _897 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _904 = mem[_897]
                                if mem[_897]:
                                    mem[mem[64] + 4] = owner
                                    mem[mem[64] + 36] = _904
                                    require ext_code.size(tokenList[idx])
                                    call tokenList[idx].0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(stor0.field_0), _904
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _937 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_937] == bool(mem[_937])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                if unknown_0x1b52b9de(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if eth.balance(this.address) <= 0:
                        revert with 0, 'balance is 0'
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require unknown_0x30a01c4e(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    return ext_call.return_data[0]
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if not 10^ext_call.return_data[31 len 1]:
                        revert with 0, 18
                    return (ext_call.return_data[0] / 10^ext_call.return_data[31 len 1])
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return (ext_call.return_data[0] / s * t)
            if unknown_0x4229dbe3(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return eth.balance(this.address)
            if unknown_0x51663fd4(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                target[address(arg1)] = arg2
                if not sub_ba27f50b[address(arg1)]:
                    if stor3 > -2:
                        revert with 0, 17
                    stor3++
                    sub_ba27f50b[address(arg1)] = stor3
                    tokenList[stor3] = address(arg1)
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x523c339d(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0x6088e93a(?????):
                        require unknown_0x8b09832d(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        stor4[address(arg1)] = 1
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(address(arg1))
                        call address(arg1).0x23b872dd with:
                             gas gas_remaining wei
                            args this.address, address(stor0.field_0), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require not msg.value
                    require calldata.size - 4 >= 192
                    require arg1 == address(arg1)
                    require arg4 == address(arg4)
                    require arg5 == address(arg5)
                    if not stor4[msg.sender]:
                        revert with 0, 'white only'
                    mem[132] = this.address
                    require ext_code.size(address(arg4))
                    staticcall address(arg4).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[0] = address(arg4)
                    mem[32] = 5
                    if not arg2:
                        if ext_call.return_data[0] > target[address(arg4)]:
                            revert with 0, 'target not enough'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'amount_in is 0'
                        mem[ceil32(return_data.size) + 132] = this.address
                        mem[ceil32(return_data.size) + 164] = address(arg1)
                        require ext_code.size(address(arg4))
                        staticcall address(arg4).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(arg1)
                        mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= ext_call.return_data[0]:
                            mem[(2 * ceil32(return_data.size)) + 132] = this.address
                            require ext_code.size(address(arg5))
                            staticcall address(arg5).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(4 * ceil32(return_data.size)) + 128] = 2
                            mem[(4 * ceil32(return_data.size)) + 160] = address(arg4)
                            mem[(4 * ceil32(return_data.size)) + 192] = address(arg5)
                            mem[(4 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                            mem[(4 * ceil32(return_data.size)) + 260] = arg3
                            mem[(4 * ceil32(return_data.size)) + 292] = 160
                            mem[(4 * ceil32(return_data.size)) + 388] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 420
                            t = (4 * ceil32(return_data.size)) + 160
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 324] = this.address
                            mem[(4 * ceil32(return_data.size)) + 356] = stor6
                            require ext_code.size(address(arg1))
                            call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 420 len 64]), address(this.address), stor6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _571 = mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
                            require mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255 < (4 * ceil32(return_data.size)) + return_data.size + 224
                            _577 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                                revert with 0, 65
                            if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
                            mem[(6 * ceil32(return_data.size)) + 224] = _577
                            require return_data.size >= _571 + (32 * _577) + 32
                            mem[(6 * ceil32(return_data.size)) + 256 len 32 * _577] = mem[(4 * ceil32(return_data.size)) + _571 + 256 len 32 * _577]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg5))
                            staticcall address(arg5).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _869 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if ext_call.return_data[0] > mem[_869]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if mem[_869] < ext_call.return_data[0]:
                                revert with 0, 17
                            if mem[_869] - ext_call.return_data[0] <= 0:
                                revert with 0, 'change balance is 0'
                            if target[address(arg4)] < ext_call.return_data[0]:
                                revert with 0, 17
                            target[address(arg4)] -= ext_call.return_data[0]
                            if arg6 <= mem[_869] - ext_call.return_data[0]:
                                if target[address(arg5)] > !arg6:
                                    revert with 0, 17
                                target[address(arg5)] += arg6
                            else:
                                if target[address(arg5)] > !(mem[_869] - ext_call.return_data[0]):
                                    revert with 0, 17
                                target[address(arg5)] = target[address(arg5)] + mem[_869] - ext_call.return_data[0]
                        else:
                            mem[(2 * ceil32(return_data.size)) + 132] = address(arg1)
                            mem[(2 * ceil32(return_data.size)) + 164] = test266151307()
                            require ext_code.size(address(arg4))
                            call address(arg4).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), test266151307()
                            mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 132] = this.address
                            require ext_code.size(address(arg5))
                            staticcall address(arg5).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(6 * ceil32(return_data.size)) + 128] = 2
                            mem[(6 * ceil32(return_data.size)) + 160] = address(arg4)
                            mem[(6 * ceil32(return_data.size)) + 192] = address(arg5)
                            mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                            mem[(6 * ceil32(return_data.size)) + 260] = arg3
                            mem[(6 * ceil32(return_data.size)) + 292] = 160
                            mem[(6 * ceil32(return_data.size)) + 388] = 2
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + 420
                            t = (6 * ceil32(return_data.size)) + 160
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(6 * ceil32(return_data.size)) + 324] = this.address
                            mem[(6 * ceil32(return_data.size)) + 356] = stor6
                            require ext_code.size(address(arg1))
                            call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], arg3, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 420 len 64]), address(this.address), stor6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _572 = mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
                            require mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255 < (6 * ceil32(return_data.size)) + return_data.size + 224
                            _578 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                            if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                                revert with 0, 65
                            if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
                            mem[(7 * ceil32(return_data.size)) + 224] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                            require return_data.size >= _572 + (32 * _578) + 32
                            mem[(7 * ceil32(return_data.size)) + 256 len 32 * _578] = mem[(6 * ceil32(return_data.size)) + _572 + 256 len 32 * _578]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg5))
                            staticcall address(arg5).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _870 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if ext_call.return_data[0] > mem[_870]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if mem[_870] < ext_call.return_data[0]:
                                revert with 0, 17
                            if mem[_870] - ext_call.return_data[0] <= 0:
                                revert with 0, 'change balance is 0'
                            if target[address(arg4)] < ext_call.return_data[0]:
                                revert with 0, 17
                            target[address(arg4)] -= ext_call.return_data[0]
                            if arg6 <= mem[_870] - ext_call.return_data[0]:
                                if target[address(arg5)] > !arg6:
                                    revert with 0, 17
                                target[address(arg5)] += arg6
                            else:
                                if target[address(arg5)] > !(mem[_870] - ext_call.return_data[0]):
                                    revert with 0, 17
                                target[address(arg5)] = target[address(arg5)] + mem[_870] - ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] >= arg2:
                            if arg2 > target[address(arg4)]:
                                revert with 0, 'target not enough'
                            if arg2 <= 0:
                                revert with 0, 'amount_in is 0'
                            mem[ceil32(return_data.size) + 132] = this.address
                            mem[ceil32(return_data.size) + 164] = address(arg1)
                            require ext_code.size(address(arg4))
                            staticcall address(arg4).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(arg1)
                            mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] >= arg2:
                                mem[(2 * ceil32(return_data.size)) + 132] = this.address
                                require ext_code.size(address(arg5))
                                staticcall address(arg5).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(4 * ceil32(return_data.size)) + 128] = 2
                                mem[(4 * ceil32(return_data.size)) + 160] = address(arg4)
                                mem[(4 * ceil32(return_data.size)) + 192] = address(arg5)
                                mem[(4 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 228] = arg2
                                mem[(4 * ceil32(return_data.size)) + 260] = arg3
                                mem[(4 * ceil32(return_data.size)) + 292] = 160
                                mem[(4 * ceil32(return_data.size)) + 388] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 420
                                t = (4 * ceil32(return_data.size)) + 160
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 324] = this.address
                                mem[(4 * ceil32(return_data.size)) + 356] = stor6
                                require ext_code.size(address(arg1))
                                call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 420 len 64]), address(this.address), stor6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (6 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _567 = mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 255 < (4 * ceil32(return_data.size)) + return_data.size + 224
                                _573 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] > test266151307():
                                    revert with 0, 65
                                if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 225
                                mem[(6 * ceil32(return_data.size)) + 224] = _573
                                require return_data.size >= _567 + (32 * _573) + 32
                                mem[(6 * ceil32(return_data.size)) + 256 len 32 * _573] = mem[(4 * ceil32(return_data.size)) + _567 + 256 len 32 * _573]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg5))
                                staticcall address(arg5).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _865 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if ext_call.return_data[0] > mem[_865]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if mem[_865] < ext_call.return_data[0]:
                                    revert with 0, 17
                                if mem[_865] - ext_call.return_data[0] <= 0:
                                    revert with 0, 'change balance is 0'
                                if target[address(arg4)] < arg2:
                                    revert with 0, 17
                                target[address(arg4)] -= arg2
                                if arg6 <= mem[_865] - ext_call.return_data[0]:
                                    if target[address(arg5)] > !arg6:
                                        revert with 0, 17
                                    target[address(arg5)] += arg6
                                else:
                                    if target[address(arg5)] > !(mem[_865] - ext_call.return_data[0]):
                                        revert with 0, 17
                                    target[address(arg5)] = target[address(arg5)] + mem[_865] - ext_call.return_data[0]
                            else:
                                mem[(2 * ceil32(return_data.size)) + 132] = address(arg1)
                                mem[(2 * ceil32(return_data.size)) + 164] = test266151307()
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), test266151307()
                                mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(4 * ceil32(return_data.size)) + 132] = this.address
                                require ext_code.size(address(arg5))
                                staticcall address(arg5).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(6 * ceil32(return_data.size)) + 128] = 2
                                mem[(6 * ceil32(return_data.size)) + 160] = address(arg4)
                                mem[(6 * ceil32(return_data.size)) + 192] = address(arg5)
                                mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(6 * ceil32(return_data.size)) + 228] = arg2
                                mem[(6 * ceil32(return_data.size)) + 260] = arg3
                                mem[(6 * ceil32(return_data.size)) + 292] = 160
                                mem[(6 * ceil32(return_data.size)) + 388] = 2
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + 420
                                t = (6 * ceil32(return_data.size)) + 160
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(6 * ceil32(return_data.size)) + 324] = this.address
                                mem[(6 * ceil32(return_data.size)) + 356] = stor6
                                require ext_code.size(address(arg1))
                                call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, arg3, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 420 len 64]), address(this.address), stor6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (7 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _568 = mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 255 < (6 * ceil32(return_data.size)) + return_data.size + 224
                                _574 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                                if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] > test266151307():
                                    revert with 0, 65
                                if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 225
                                mem[(7 * ceil32(return_data.size)) + 224] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                                require return_data.size >= _568 + (32 * _574) + 32
                                mem[(7 * ceil32(return_data.size)) + 256 len 32 * _574] = mem[(6 * ceil32(return_data.size)) + _568 + 256 len 32 * _574]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg5))
                                staticcall address(arg5).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _866 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if ext_call.return_data[0] > mem[_866]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if mem[_866] < ext_call.return_data[0]:
                                    revert with 0, 17
                                if mem[_866] - ext_call.return_data[0] <= 0:
                                    revert with 0, 'change balance is 0'
                                if target[address(arg4)] < arg2:
                                    revert with 0, 17
                                target[address(arg4)] -= arg2
                                if arg6 <= mem[_866] - ext_call.return_data[0]:
                                    if target[address(arg5)] > !arg6:
                                        revert with 0, 17
                                    target[address(arg5)] += arg6
                                else:
                                    if target[address(arg5)] > !(mem[_866] - ext_call.return_data[0]):
                                        revert with 0, 17
                                    target[address(arg5)] = target[address(arg5)] + mem[_866] - ext_call.return_data[0]
                        else:
                            if ext_call.return_data[0] > target[address(arg4)]:
                                revert with 0, 'target not enough'
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'amount_in is 0'
                            mem[ceil32(return_data.size) + 132] = this.address
                            mem[ceil32(return_data.size) + 164] = address(arg1)
                            require ext_code.size(address(arg4))
                            staticcall address(arg4).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(arg1)
                            mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] >= ext_call.return_data[0]:
                                mem[(2 * ceil32(return_data.size)) + 132] = this.address
                                require ext_code.size(address(arg5))
                                staticcall address(arg5).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(4 * ceil32(return_data.size)) + 128] = 2
                                mem[(4 * ceil32(return_data.size)) + 160] = address(arg4)
                                mem[(4 * ceil32(return_data.size)) + 192] = address(arg5)
                                mem[(4 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                                mem[(4 * ceil32(return_data.size)) + 260] = arg3
                                mem[(4 * ceil32(return_data.size)) + 292] = 160
                                mem[(4 * ceil32(return_data.size)) + 388] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 420
                                t = (4 * ceil32(return_data.size)) + 160
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 324] = this.address
                                mem[(4 * ceil32(return_data.size)) + 356] = stor6
                                require ext_code.size(address(arg1))
                                call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 420 len 64]), address(this.address), stor6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (6 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _569 = mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
                                require mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255 < (4 * ceil32(return_data.size)) + return_data.size + 224
                                _575 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                                    revert with 0, 65
                                if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
                                mem[(6 * ceil32(return_data.size)) + 224] = _575
                                require return_data.size >= _569 + (32 * _575) + 32
                                mem[(6 * ceil32(return_data.size)) + 256 len 32 * _575] = mem[(4 * ceil32(return_data.size)) + _569 + 256 len 32 * _575]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg5))
                                staticcall address(arg5).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _867 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if ext_call.return_data[0] > mem[_867]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if mem[_867] < ext_call.return_data[0]:
                                    revert with 0, 17
                                if mem[_867] - ext_call.return_data[0] <= 0:
                                    revert with 0, 'change balance is 0'
                                if target[address(arg4)] < ext_call.return_data[0]:
                                    revert with 0, 17
                                target[address(arg4)] -= ext_call.return_data[0]
                                if arg6 <= mem[_867] - ext_call.return_data[0]:
                                    if target[address(arg5)] > !arg6:
                                        revert with 0, 17
                                    target[address(arg5)] += arg6
                                else:
                                    if target[address(arg5)] > !(mem[_867] - ext_call.return_data[0]):
                                        revert with 0, 17
                                    target[address(arg5)] = target[address(arg5)] + mem[_867] - ext_call.return_data[0]
                            else:
                                mem[(2 * ceil32(return_data.size)) + 132] = address(arg1)
                                mem[(2 * ceil32(return_data.size)) + 164] = test266151307()
                                require ext_code.size(address(arg4))
                                call address(arg4).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), test266151307()
                                mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(4 * ceil32(return_data.size)) + 132] = this.address
                                require ext_code.size(address(arg5))
                                staticcall address(arg5).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(6 * ceil32(return_data.size)) + 128] = 2
                                mem[(6 * ceil32(return_data.size)) + 160] = address(arg4)
                                mem[(6 * ceil32(return_data.size)) + 192] = address(arg5)
                                mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(6 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                                mem[(6 * ceil32(return_data.size)) + 260] = arg3
                                mem[(6 * ceil32(return_data.size)) + 292] = 160
                                mem[(6 * ceil32(return_data.size)) + 388] = 2
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + 420
                                t = (6 * ceil32(return_data.size)) + 160
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(6 * ceil32(return_data.size)) + 324] = this.address
                                mem[(6 * ceil32(return_data.size)) + 356] = stor6
                                require ext_code.size(address(arg1))
                                call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], arg3, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 420 len 64]), address(this.address), stor6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (7 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _570 = mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
                                require mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255 < (6 * ceil32(return_data.size)) + return_data.size + 224
                                _576 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                                    revert with 0, 65
                                if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
                                mem[(7 * ceil32(return_data.size)) + 224] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                require return_data.size >= _570 + (32 * _576) + 32
                                mem[(7 * ceil32(return_data.size)) + 256 len 32 * _576] = mem[(6 * ceil32(return_data.size)) + _570 + 256 len 32 * _576]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg5))
                                staticcall address(arg5).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _868 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if ext_call.return_data[0] > mem[_868]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if mem[_868] < ext_call.return_data[0]:
                                    revert with 0, 17
                                if mem[_868] - ext_call.return_data[0] <= 0:
                                    revert with 0, 'change balance is 0'
                                if target[address(arg4)] < ext_call.return_data[0]:
                                    revert with 0, 17
                                target[address(arg4)] -= ext_call.return_data[0]
                                if arg6 <= mem[_868] - ext_call.return_data[0]:
                                    if target[address(arg5)] > !arg6:
                                        revert with 0, 17
                                    target[address(arg5)] += arg6
                                else:
                                    if target[address(arg5)] > !(mem[_868] - ext_call.return_data[0]):
                                        revert with 0, 17
                                    target[address(arg5)] = target[address(arg5)] + mem[_868] - ext_call.return_data[0]
                    if not sub_ba27f50b[address(arg4)]:
                        if stor3 > -2:
                            revert with 0, 17
                        stor3++
                        sub_ba27f50b[address(arg4)] = stor3
                        tokenList[stor3] = address(arg4)
                    if not sub_ba27f50b[address(arg5)]:
                        if stor3 > -2:
                            revert with 0, 17
                        stor3++
                        sub_ba27f50b[address(arg5)] = stor3
                        tokenList[stor3] = address(arg5)
}



}
