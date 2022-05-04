contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
#
const sub_4229dbe3(?) = eth.balance(this.address)


uint16 stor0;
address stor0;
address owner; offset 16
mapping of uint8 stor1;
mapping of address tokenList;
mapping of uint256 sub_ba27f50b;
uint256 stor4;
mapping of struct target;
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
    return target[arg1].field_0
}

function whiteListed(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function addWhite(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 1
}

function removeWhite(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 0
}

function sub_d5d7ff3c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    target[address(arg1)].field_0 = 0
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
    if eth.balance(this.address):
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_4b8eb24c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not sub_ba27f50b[address(arg1)]:
        if stor4 > -2:
            revert with 0, 17
        stor4++
        sub_ba27f50b[address(arg1)] = stor4
        tokenList[stor4] = address(arg1)
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
    target[address(arg1)].field_0 = arg2
    if not sub_ba27f50b[address(arg1)]:
        if stor4 > -2:
            revert with 0, 17
        stor4++
        sub_ba27f50b[address(arg1)] = stor4
        tokenList[stor4] = address(arg1)
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

function sub_946b5793(?) {
    require calldata.size - 4 >= 96
    require arg1 == bool(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require calldata.size > arg3 + 35
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 98 < 97 or ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    if arg1:
    if arg2.length:
        revert with 0, 'here'
    revert with 0, 
                32,
                arg3.length,
                arg3[all],
                Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 27) + 256, 32) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 27) + 256
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
    while idx <= stor4:
        mem[0] = idx
        mem[32] = 2
        require ext_code.size(tokenList[idx])
        staticcall tokenList[idx].0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _35 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_35] == mem[_35 + 31 len 1]
        if not mem[_35 + 31 len 1]:
            mem[mem[64] + 4] = this.address
            require ext_code.size(tokenList[idx])
            staticcall tokenList[idx].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _39 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _40 = mem[_39]
            if mem[_39]:
                mem[mem[64] + 4] = owner
                mem[mem[64] + 36] = _40
                require ext_code.size(tokenList[idx])
                call tokenList[idx].0xa9059cbb with:
                     gas gas_remaining wei
                    args address(stor0.field_0), _40
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _49 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_49] == bool(mem[_49])
        else:
            if bool(bool(mem[_35 + 31 len 1] < 78)) or bool(bool(mem[_35 + 31 len 1] < 32)):
                if False and 10^mem[_35 + 31 len 1] > 0:
                    revert with 0, 17
                mem[mem[64] + 4] = this.address
                require ext_code.size(tokenList[idx])
                staticcall tokenList[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _43 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _48 = mem[_43]
                if mem[_43]:
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _48
                    require ext_code.size(tokenList[idx])
                    call tokenList[idx].0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor0.field_0), _48
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _55 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_55] == bool(mem[_55])
            else:
                t = 10
                u = 1
                s = mem[_35 + 31 len 1]
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
                _63 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _64 = mem[_63]
                if mem[_63]:
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _64
                    require ext_code.size(tokenList[idx])
                    call tokenList[idx].0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor0.field_0), _64
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _67 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_67] == bool(mem[_67])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function withdrawAll() payable {
    mem[64] = 96
    require not msg.value
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 1
    while idx <= stor4:
        mem[0] = idx
        mem[32] = 2
        require ext_code.size(tokenList[idx])
        staticcall tokenList[idx].0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _39 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_39] == mem[_39 + 31 len 1]
        if not mem[_39 + 31 len 1]:
            mem[mem[64] + 4] = this.address
            require ext_code.size(tokenList[idx])
            staticcall tokenList[idx].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _45 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _46 = mem[_45]
            if mem[_45]:
                mem[mem[64] + 4] = owner
                mem[mem[64] + 36] = _46
                require ext_code.size(tokenList[idx])
                call tokenList[idx].0xa9059cbb with:
                     gas gas_remaining wei
                    args address(stor0.field_0), _46
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _55 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_55] == bool(mem[_55])
        else:
            if bool(bool(mem[_39 + 31 len 1] < 78)) or bool(bool(mem[_39 + 31 len 1] < 32)):
                if False and 10^mem[_39 + 31 len 1] > 0:
                    revert with 0, 17
                mem[mem[64] + 4] = this.address
                require ext_code.size(tokenList[idx])
                staticcall tokenList[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _49 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _54 = mem[_49]
                if mem[_49]:
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _54
                    require ext_code.size(tokenList[idx])
                    call tokenList[idx].0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor0.field_0), _54
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _61 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_61] == bool(mem[_61])
            else:
                t = 10
                u = 1
                s = mem[_39 + 31 len 1]
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
                _69 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _70 = mem[_69]
                if mem[_69]:
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _70
                    require ext_code.size(tokenList[idx])
                    call tokenList[idx].0xa9059cbb with:
                         gas gas_remaining wei
                        args address(stor0.field_0), _70
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _73 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_73] == bool(mem[_73])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address):
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_e551b351(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
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
        if arg3 and 1 > -1 / arg3:
            revert with 0, 17
        require ext_code.size(address(arg1))
        if arg3:
            call address(arg1).0x23b872dd with:
                 gas gas_remaining wei
                args address(arg2), this.address, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not sub_ba27f50b[address(arg1)]:
                if stor4 > -2:
                    revert with 0, 17
                stor4++
                sub_ba27f50b[address(arg1)] = stor4
                tokenList[stor4] = address(arg1)
        else:
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(address(arg1))
                call address(arg1).0x23b872dd with:
                     gas gas_remaining wei
                    args address(arg2), this.address, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not sub_ba27f50b[address(arg1)]:
                    if stor4 > -2:
                        revert with 0, 17
                    stor4++
                    sub_ba27f50b[address(arg1)] = stor4
                    tokenList[stor4] = address(arg1)
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if arg3 and 10^ext_call.return_data[31 len 1] > -1 / arg3:
                revert with 0, 17
            require ext_code.size(address(arg1))
            if arg3 * 10^ext_call.return_data[31 len 1]:
                call address(arg1).0x23b872dd with:
                     gas gas_remaining wei
                    args address(arg2), this.address, arg3 * 10^uint8(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not sub_ba27f50b[address(arg1)]:
                    if stor4 > -2:
                        revert with 0, 17
                    stor4++
                    sub_ba27f50b[address(arg1)] = stor4
                    tokenList[stor4] = address(arg1)
            else:
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(address(arg1))
                    call address(arg1).0x23b872dd with:
                         gas gas_remaining wei
                        args address(arg2), this.address, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not sub_ba27f50b[address(arg1)]:
                        if stor4 > -2:
                            revert with 0, 17
                        stor4++
                        sub_ba27f50b[address(arg1)] = stor4
                        tokenList[stor4] = address(arg1)
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
            if arg3 and s * t > -1 / arg3:
                revert with 0, 17
            require ext_code.size(address(arg1))
            if arg3 * s * t:
                call address(arg1).0x23b872dd with:
                     gas gas_remaining wei
                    args address(arg2), this.address, arg3 * s * t
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not sub_ba27f50b[address(arg1)]:
                    if stor4 > -2:
                        revert with 0, 17
                    stor4++
                    sub_ba27f50b[address(arg1)] = stor4
                    tokenList[stor4] = address(arg1)
            else:
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(address(arg1))
                    call address(arg1).0x23b872dd with:
                         gas gas_remaining wei
                        args address(arg2), this.address, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not sub_ba27f50b[address(arg1)]:
                        if stor4 > -2:
                            revert with 0, 17
                        stor4++
                        sub_ba27f50b[address(arg1)] = stor4
                        tokenList[stor4] = address(arg1)
}

function sub_0e4173c8(?) {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg7 == bool(arg7)
    if not stor1[msg.sender]:
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
        if ext_call.return_data[0] <= target[address(arg4)].field_0:
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
                s = (4 * ceil32(return_data.size)) + 128
                t = (4 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
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
                _2338 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                _2350 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307():
                    revert with 0, 65
                mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                require return_data.size >= _2338 + (32 * _2350) + 32
                mem[(6 * ceil32(return_data.size)) + 224 len 32 * _2350] = mem[(4 * ceil32(return_data.size)) + _2338 + 224 len 32 * _2350]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg5))
                staticcall address(arg5).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4450 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4462 = mem[_4450]
                _4474 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4474] = 30
                mem[_4474 + 32] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] > _4462:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if _4462 < ext_call.return_data[0]:
                    revert with 0, 17
                if _4462 - ext_call.return_data[0] < arg3:
                    revert with 0, 'output not enough'
                if not arg7:
                    if ext_call.return_data[0] > target[address(arg4)].field_0:
                        target[address(arg4)].field_0 = 0
                    else:
                        if target[address(arg4)].field_0 < ext_call.return_data[0]:
                            revert with 0, 17
                        target[address(arg4)].field_0 -= ext_call.return_data[0]
                    if arg6 <= _4462 - ext_call.return_data[0]:
                        if target[address(arg5)].field_0 > !arg6:
                            revert with 0, 17
                        target[address(arg5)].field_0 += arg6
                    else:
                        if target[address(arg5)].field_0 > !(_4462 - ext_call.return_data[0]):
                            revert with 0, 17
                        target[address(arg5)].field_0 = target[address(arg5)].field_0 + _4462 - ext_call.return_data[0]
                else:
                    mem[(4 * ceil32(return_data.size)) + 128] = address(arg5)
                    mem[(4 * ceil32(return_data.size)) + 160] = address(arg4)
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(arg1)
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4708 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_4708] >= _4462 - ext_call.return_data[0] / 100000:
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _4462 - ext_call.return_data[0] / 100000
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = stor6
                        require ext_code.size(address(arg1))
                        call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _4462 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6546 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6546] <= test266151307()
                        require _6546 + mem[_6546] + 31 < _6546 + return_data.size
                        if mem[_6546 + mem[_6546]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_6546 + mem[_6546]]) + 1 < 0 or _6546 + ceil32(return_data.size) + ceil32(32 * mem[_6546 + mem[_6546]]) + 1 > test266151307():
                            revert with 0, 65
                        require return_data.size >= mem[_6546] + (32 * mem[_6546 + mem[_6546]]) + 32
                    else:
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = test266151307()
                        require ext_code.size(address(arg5))
                        call address(arg5).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), test266151307()
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4909 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4909] == bool(mem[_4909])
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _4462 - ext_call.return_data[0] / 100000
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = stor6
                        require ext_code.size(address(arg1))
                        call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _4462 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6547 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6547] <= test266151307()
                        require _6547 + mem[_6547] + 31 < _6547 + return_data.size
                        if mem[_6547 + mem[_6547]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_6547 + mem[_6547]]) + 1 < 0 or _6547 + ceil32(return_data.size) + ceil32(32 * mem[_6547 + mem[_6547]]) + 1 > test266151307():
                            revert with 0, 65
                        require return_data.size >= mem[_6547] + (32 * mem[_6547 + mem[_6547]]) + 32
                    if _4462 - ext_call.return_data[0] < _4462 - ext_call.return_data[0] / 100000:
                        revert with 0, 17
                    if ext_call.return_data[0] > target[address(arg4)].field_0:
                        target[address(arg4)].field_0 = 0
                    else:
                        if target[address(arg4)].field_0 < ext_call.return_data[0]:
                            revert with 0, 17
                        target[address(arg4)].field_0 -= ext_call.return_data[0]
                    if arg6 <= _4462 - ext_call.return_data[0] - (_4462 - ext_call.return_data[0] / 100000):
                        if target[address(arg5)].field_0 > !arg6:
                            revert with 0, 17
                        target[address(arg5)].field_0 += arg6
                    else:
                        if target[address(arg5)].field_0 > !(_4462 - ext_call.return_data[0] - (_4462 - ext_call.return_data[0] / 100000)):
                            revert with 0, 17
                        target[address(arg5)].field_0 = target[address(arg5)].field_0 + _4462 - ext_call.return_data[0] - (_4462 - ext_call.return_data[0] / 100000)
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
                s = (6 * ceil32(return_data.size)) + 128
                t = (6 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
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
                _2339 = mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                require mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
                _2351 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307():
                    revert with 0, 65
                mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                mem[(7 * ceil32(return_data.size)) + 192] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                require return_data.size >= _2339 + (32 * _2351) + 32
                mem[(7 * ceil32(return_data.size)) + 224 len 32 * _2351] = mem[(6 * ceil32(return_data.size)) + _2339 + 224 len 32 * _2351]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg5))
                staticcall address(arg5).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4451 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4463 = mem[_4451]
                _4475 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4475] = 30
                mem[_4475 + 32] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] > _4463:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if _4463 < ext_call.return_data[0]:
                    revert with 0, 17
                if _4463 - ext_call.return_data[0] < arg3:
                    revert with 0, 'output not enough'
                if not arg7:
                    if ext_call.return_data[0] > target[address(arg4)].field_0:
                        target[address(arg4)].field_0 = 0
                    else:
                        if target[address(arg4)].field_0 < ext_call.return_data[0]:
                            revert with 0, 17
                        target[address(arg4)].field_0 -= ext_call.return_data[0]
                    if arg6 <= _4463 - ext_call.return_data[0]:
                        if target[address(arg5)].field_0 > !arg6:
                            revert with 0, 17
                        target[address(arg5)].field_0 += arg6
                    else:
                        if target[address(arg5)].field_0 > !(_4463 - ext_call.return_data[0]):
                            revert with 0, 17
                        target[address(arg5)].field_0 = target[address(arg5)].field_0 + _4463 - ext_call.return_data[0]
                else:
                    mem[(6 * ceil32(return_data.size)) + 128] = address(arg5)
                    mem[(6 * ceil32(return_data.size)) + 160] = address(arg4)
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(arg1)
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4711 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_4711] >= _4463 - ext_call.return_data[0] / 100000:
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _4463 - ext_call.return_data[0] / 100000
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = stor6
                        require ext_code.size(address(arg1))
                        call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _4463 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6548 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6548] <= test266151307()
                        require _6548 + mem[_6548] + 31 < _6548 + return_data.size
                        if mem[_6548 + mem[_6548]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_6548 + mem[_6548]]) + 1 < 0 or _6548 + ceil32(return_data.size) + ceil32(32 * mem[_6548 + mem[_6548]]) + 1 > test266151307():
                            revert with 0, 65
                        require return_data.size >= mem[_6548] + (32 * mem[_6548 + mem[_6548]]) + 32
                    else:
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = test266151307()
                        require ext_code.size(address(arg5))
                        call address(arg5).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), test266151307()
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4913 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4913] == bool(mem[_4913])
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _4463 - ext_call.return_data[0] / 100000
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = stor6
                        require ext_code.size(address(arg1))
                        call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _4463 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6549 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6549] <= test266151307()
                        require _6549 + mem[_6549] + 31 < _6549 + return_data.size
                        if mem[_6549 + mem[_6549]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_6549 + mem[_6549]]) + 1 < 0 or _6549 + ceil32(return_data.size) + ceil32(32 * mem[_6549 + mem[_6549]]) + 1 > test266151307():
                            revert with 0, 65
                        require return_data.size >= mem[_6549] + (32 * mem[_6549 + mem[_6549]]) + 32
                    if _4463 - ext_call.return_data[0] < _4463 - ext_call.return_data[0] / 100000:
                        revert with 0, 17
                    if ext_call.return_data[0] > target[address(arg4)].field_0:
                        target[address(arg4)].field_0 = 0
                    else:
                        if target[address(arg4)].field_0 < ext_call.return_data[0]:
                            revert with 0, 17
                        target[address(arg4)].field_0 -= ext_call.return_data[0]
                    if arg6 <= _4463 - ext_call.return_data[0] - (_4463 - ext_call.return_data[0] / 100000):
                        if target[address(arg5)].field_0 > !arg6:
                            revert with 0, 17
                        target[address(arg5)].field_0 += arg6
                    else:
                        if target[address(arg5)].field_0 > !(_4463 - ext_call.return_data[0] - (_4463 - ext_call.return_data[0] / 100000)):
                            revert with 0, 17
                        target[address(arg5)].field_0 = target[address(arg5)].field_0 + _4463 - ext_call.return_data[0] - (_4463 - ext_call.return_data[0] / 100000)
        else:
            mem[0] = address(arg4)
            mem[32] = 5
            if target[address(arg4)].field_0 <= 0:
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
            if ext_call.return_data[0] >= target[address(arg4)].field_0:
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
                mem[(4 * ceil32(return_data.size)) + 196] = target[address(arg4)].field_0
                mem[(4 * ceil32(return_data.size)) + 228] = arg3
                mem[(4 * ceil32(return_data.size)) + 260] = 160
                mem[(4 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (4 * ceil32(return_data.size)) + 128
                t = (4 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + 292] = this.address
                mem[(4 * ceil32(return_data.size)) + 324] = stor6
                require ext_code.size(address(arg1))
                call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args target[address(arg4)].field_0, arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(this.address), stor6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _2340 = mem[(4 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32
                require mem[(4 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                _2352 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 192]
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 192] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 192]) + 193 > test266151307():
                    revert with 0, 65
                mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 192]) + 193
                mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 192]
                require return_data.size >= _2340 + (32 * _2352) + 32
                mem[(6 * ceil32(return_data.size)) + 224 len 32 * _2352] = mem[(4 * ceil32(return_data.size)) + _2340 + 224 len 32 * _2352]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg5))
                staticcall address(arg5).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4452 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4464 = mem[_4452]
                _4476 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4476] = 30
                mem[_4476 + 32] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] > _4464:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if _4464 < ext_call.return_data[0]:
                    revert with 0, 17
                if _4464 - ext_call.return_data[0] < arg3:
                    revert with 0, 'output not enough'
                if not arg7:
                    if target[address(arg4)].field_0 <= target[address(arg4)].field_0:
                        if target[address(arg4)].field_0 < target[address(arg4)].field_0:
                            revert with 0, 17
                    target[address(arg4)].field_0 = 0
                    if arg6 <= _4464 - ext_call.return_data[0]:
                        if target[address(arg5)].field_0 > !arg6:
                            revert with 0, 17
                        target[address(arg5)].field_0 += arg6
                    else:
                        if target[address(arg5)].field_0 > !(_4464 - ext_call.return_data[0]):
                            revert with 0, 17
                        target[address(arg5)].field_0 = target[address(arg5)].field_0 + _4464 - ext_call.return_data[0]
                else:
                    mem[(4 * ceil32(return_data.size)) + 128] = address(arg5)
                    mem[(4 * ceil32(return_data.size)) + 160] = address(arg4)
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(arg1)
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4714 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_4714] >= _4464 - ext_call.return_data[0] / 100000:
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _4464 - ext_call.return_data[0] / 100000
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = stor6
                        require ext_code.size(address(arg1))
                        call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _4464 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6550 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6550] <= test266151307()
                        require _6550 + mem[_6550] + 31 < _6550 + return_data.size
                        if mem[_6550 + mem[_6550]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_6550 + mem[_6550]]) + 1 < 0 or _6550 + ceil32(return_data.size) + ceil32(32 * mem[_6550 + mem[_6550]]) + 1 > test266151307():
                            revert with 0, 65
                        require return_data.size >= mem[_6550] + (32 * mem[_6550 + mem[_6550]]) + 32
                    else:
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = test266151307()
                        require ext_code.size(address(arg5))
                        call address(arg5).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), test266151307()
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4917 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4917] == bool(mem[_4917])
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _4464 - ext_call.return_data[0] / 100000
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = stor6
                        require ext_code.size(address(arg1))
                        call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _4464 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6551 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6551] <= test266151307()
                        require _6551 + mem[_6551] + 31 < _6551 + return_data.size
                        if mem[_6551 + mem[_6551]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_6551 + mem[_6551]]) + 1 < 0 or _6551 + ceil32(return_data.size) + ceil32(32 * mem[_6551 + mem[_6551]]) + 1 > test266151307():
                            revert with 0, 65
                        require return_data.size >= mem[_6551] + (32 * mem[_6551 + mem[_6551]]) + 32
                    if _4464 - ext_call.return_data[0] < _4464 - ext_call.return_data[0] / 100000:
                        revert with 0, 17
                    if target[address(arg4)].field_0 <= target[address(arg4)].field_0:
                        if target[address(arg4)].field_0 < target[address(arg4)].field_0:
                            revert with 0, 17
                    target[address(arg4)].field_0 = 0
                    if arg6 <= _4464 - ext_call.return_data[0] - (_4464 - ext_call.return_data[0] / 100000):
                        if target[address(arg5)].field_0 > !arg6:
                            revert with 0, 17
                        target[address(arg5)].field_0 += arg6
                    else:
                        if target[address(arg5)].field_0 > !(_4464 - ext_call.return_data[0] - (_4464 - ext_call.return_data[0] / 100000)):
                            revert with 0, 17
                        target[address(arg5)].field_0 = target[address(arg5)].field_0 + _4464 - ext_call.return_data[0] - (_4464 - ext_call.return_data[0] / 100000)
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
                mem[(6 * ceil32(return_data.size)) + 196] = target[address(arg4)].field_0
                mem[(6 * ceil32(return_data.size)) + 228] = arg3
                mem[(6 * ceil32(return_data.size)) + 260] = 160
                mem[(6 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + 128
                t = (6 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + 292] = this.address
                mem[(6 * ceil32(return_data.size)) + 324] = stor6
                require ext_code.size(address(arg1))
                call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args target[address(arg4)].field_0, arg3, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 388 len 64]), address(this.address), stor6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _2341 = mem[(6 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32
                require mem[(6 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 <= test266151307()
                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
                _2353 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 192]
                if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 192] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 192]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 192]) + 193 > test266151307():
                    revert with 0, 65
                mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 192]) + 193
                mem[(7 * ceil32(return_data.size)) + 192] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 192]
                require return_data.size >= _2341 + (32 * _2353) + 32
                mem[(7 * ceil32(return_data.size)) + 224 len 32 * _2353] = mem[(6 * ceil32(return_data.size)) + _2341 + 224 len 32 * _2353]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg5))
                staticcall address(arg5).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4453 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4465 = mem[_4453]
                _4477 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4477] = 30
                mem[_4477 + 32] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] > _4465:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if _4465 < ext_call.return_data[0]:
                    revert with 0, 17
                if _4465 - ext_call.return_data[0] < arg3:
                    revert with 0, 'output not enough'
                if not arg7:
                    if target[address(arg4)].field_0 <= target[address(arg4)].field_0:
                        if target[address(arg4)].field_0 < target[address(arg4)].field_0:
                            revert with 0, 17
                    target[address(arg4)].field_0 = 0
                    if arg6 <= _4465 - ext_call.return_data[0]:
                        if target[address(arg5)].field_0 > !arg6:
                            revert with 0, 17
                        target[address(arg5)].field_0 += arg6
                    else:
                        if target[address(arg5)].field_0 > !(_4465 - ext_call.return_data[0]):
                            revert with 0, 17
                        target[address(arg5)].field_0 = target[address(arg5)].field_0 + _4465 - ext_call.return_data[0]
                else:
                    mem[(6 * ceil32(return_data.size)) + 128] = address(arg5)
                    mem[(6 * ceil32(return_data.size)) + 160] = address(arg4)
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(arg1)
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4717 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_4717] >= _4465 - ext_call.return_data[0] / 100000:
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _4465 - ext_call.return_data[0] / 100000
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = stor6
                        require ext_code.size(address(arg1))
                        call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _4465 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6552 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6552] <= test266151307()
                        require _6552 + mem[_6552] + 31 < _6552 + return_data.size
                        if mem[_6552 + mem[_6552]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_6552 + mem[_6552]]) + 1 < 0 or _6552 + ceil32(return_data.size) + ceil32(32 * mem[_6552 + mem[_6552]]) + 1 > test266151307():
                            revert with 0, 65
                        require return_data.size >= mem[_6552] + (32 * mem[_6552 + mem[_6552]]) + 32
                    else:
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = test266151307()
                        require ext_code.size(address(arg5))
                        call address(arg5).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), test266151307()
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4921 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4921] == bool(mem[_4921])
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _4465 - ext_call.return_data[0] / 100000
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = stor6
                        require ext_code.size(address(arg1))
                        call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _4465 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6553 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6553] <= test266151307()
                        require _6553 + mem[_6553] + 31 < _6553 + return_data.size
                        if mem[_6553 + mem[_6553]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_6553 + mem[_6553]]) + 1 < 0 or _6553 + ceil32(return_data.size) + ceil32(32 * mem[_6553 + mem[_6553]]) + 1 > test266151307():
                            revert with 0, 65
                        require return_data.size >= mem[_6553] + (32 * mem[_6553 + mem[_6553]]) + 32
                    if _4465 - ext_call.return_data[0] < _4465 - ext_call.return_data[0] / 100000:
                        revert with 0, 17
                    if target[address(arg4)].field_0 <= target[address(arg4)].field_0:
                        if target[address(arg4)].field_0 < target[address(arg4)].field_0:
                            revert with 0, 17
                    target[address(arg4)].field_0 = 0
                    if arg6 <= _4465 - ext_call.return_data[0] - (_4465 - ext_call.return_data[0] / 100000):
                        if target[address(arg5)].field_0 > !arg6:
                            revert with 0, 17
                        target[address(arg5)].field_0 += arg6
                    else:
                        if target[address(arg5)].field_0 > !(_4465 - ext_call.return_data[0] - (_4465 - ext_call.return_data[0] / 100000)):
                            revert with 0, 17
                        target[address(arg5)].field_0 = target[address(arg5)].field_0 + _4465 - ext_call.return_data[0] - (_4465 - ext_call.return_data[0] / 100000)
    else:
        if ext_call.return_data[0] >= arg2:
            if arg2 <= target[address(arg4)].field_0:
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
                    s = (4 * ceil32(return_data.size)) + 128
                    t = (4 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
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
                    _2330 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _2342 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    require return_data.size >= _2330 + (32 * _2342) + 32
                    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _2342] = mem[(4 * ceil32(return_data.size)) + _2330 + 224 len 32 * _2342]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4442 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4454 = mem[_4442]
                    _4466 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4466] = 30
                    mem[_4466 + 32] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] > _4454:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if _4454 < ext_call.return_data[0]:
                        revert with 0, 17
                    if _4454 - ext_call.return_data[0] < arg3:
                        revert with 0, 'output not enough'
                    if not arg7:
                        if arg2 > target[address(arg4)].field_0:
                            target[address(arg4)].field_0 = 0
                        else:
                            if target[address(arg4)].field_0 < arg2:
                                revert with 0, 17
                            target[address(arg4)].field_0 -= arg2
                        if arg6 <= _4454 - ext_call.return_data[0]:
                            if target[address(arg5)].field_0 > !arg6:
                                revert with 0, 17
                            target[address(arg5)].field_0 += arg6
                        else:
                            if target[address(arg5)].field_0 > !(_4454 - ext_call.return_data[0]):
                                revert with 0, 17
                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _4454 - ext_call.return_data[0]
                    else:
                        mem[(4 * ceil32(return_data.size)) + 128] = address(arg5)
                        mem[(4 * ceil32(return_data.size)) + 160] = address(arg4)
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(arg1)
                        require ext_code.size(address(arg5))
                        staticcall address(arg5).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4684 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_4684] >= _4454 - ext_call.return_data[0] / 100000:
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _4454 - ext_call.return_data[0] / 100000
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 128
                            t = mem[64] + 196
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = stor6
                            require ext_code.size(address(arg1))
                            call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _4454 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6530 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6530] <= test266151307()
                            require _6530 + mem[_6530] + 31 < _6530 + return_data.size
                            if mem[_6530 + mem[_6530]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_6530 + mem[_6530]]) + 1 < 0 or _6530 + ceil32(return_data.size) + ceil32(32 * mem[_6530 + mem[_6530]]) + 1 > test266151307():
                                revert with 0, 65
                            require return_data.size >= mem[_6530] + (32 * mem[_6530 + mem[_6530]]) + 32
                        else:
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = test266151307()
                            require ext_code.size(address(arg5))
                            call address(arg5).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), test266151307()
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4877 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4877] == bool(mem[_4877])
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _4454 - ext_call.return_data[0] / 100000
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 128
                            t = mem[64] + 196
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = stor6
                            require ext_code.size(address(arg1))
                            call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _4454 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6531 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6531] <= test266151307()
                            require _6531 + mem[_6531] + 31 < _6531 + return_data.size
                            if mem[_6531 + mem[_6531]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_6531 + mem[_6531]]) + 1 < 0 or _6531 + ceil32(return_data.size) + ceil32(32 * mem[_6531 + mem[_6531]]) + 1 > test266151307():
                                revert with 0, 65
                            require return_data.size >= mem[_6531] + (32 * mem[_6531 + mem[_6531]]) + 32
                        if _4454 - ext_call.return_data[0] < _4454 - ext_call.return_data[0] / 100000:
                            revert with 0, 17
                        if arg2 > target[address(arg4)].field_0:
                            target[address(arg4)].field_0 = 0
                        else:
                            if target[address(arg4)].field_0 < arg2:
                                revert with 0, 17
                            target[address(arg4)].field_0 -= arg2
                        if arg6 <= _4454 - ext_call.return_data[0] - (_4454 - ext_call.return_data[0] / 100000):
                            if target[address(arg5)].field_0 > !arg6:
                                revert with 0, 17
                            target[address(arg5)].field_0 += arg6
                        else:
                            if target[address(arg5)].field_0 > !(_4454 - ext_call.return_data[0] - (_4454 - ext_call.return_data[0] / 100000)):
                                revert with 0, 17
                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _4454 - ext_call.return_data[0] - (_4454 - ext_call.return_data[0] / 100000)
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
                    s = (6 * ceil32(return_data.size)) + 128
                    t = (6 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
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
                    _2331 = mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
                    _2343 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                    mem[(7 * ceil32(return_data.size)) + 192] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    require return_data.size >= _2331 + (32 * _2343) + 32
                    mem[(7 * ceil32(return_data.size)) + 224 len 32 * _2343] = mem[(6 * ceil32(return_data.size)) + _2331 + 224 len 32 * _2343]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4443 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4455 = mem[_4443]
                    _4467 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4467] = 30
                    mem[_4467 + 32] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] > _4455:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if _4455 < ext_call.return_data[0]:
                        revert with 0, 17
                    if _4455 - ext_call.return_data[0] < arg3:
                        revert with 0, 'output not enough'
                    if not arg7:
                        if arg2 > target[address(arg4)].field_0:
                            target[address(arg4)].field_0 = 0
                        else:
                            if target[address(arg4)].field_0 < arg2:
                                revert with 0, 17
                            target[address(arg4)].field_0 -= arg2
                        if arg6 <= _4455 - ext_call.return_data[0]:
                            if target[address(arg5)].field_0 > !arg6:
                                revert with 0, 17
                            target[address(arg5)].field_0 += arg6
                        else:
                            if target[address(arg5)].field_0 > !(_4455 - ext_call.return_data[0]):
                                revert with 0, 17
                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _4455 - ext_call.return_data[0]
                    else:
                        mem[(6 * ceil32(return_data.size)) + 128] = address(arg5)
                        mem[(6 * ceil32(return_data.size)) + 160] = address(arg4)
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(arg1)
                        require ext_code.size(address(arg5))
                        staticcall address(arg5).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4687 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_4687] >= _4455 - ext_call.return_data[0] / 100000:
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _4455 - ext_call.return_data[0] / 100000
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 2
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + 128
                            t = mem[64] + 196
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = stor6
                            require ext_code.size(address(arg1))
                            call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _4455 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6532 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6532] <= test266151307()
                            require _6532 + mem[_6532] + 31 < _6532 + return_data.size
                            if mem[_6532 + mem[_6532]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_6532 + mem[_6532]]) + 1 < 0 or _6532 + ceil32(return_data.size) + ceil32(32 * mem[_6532 + mem[_6532]]) + 1 > test266151307():
                                revert with 0, 65
                            require return_data.size >= mem[_6532] + (32 * mem[_6532 + mem[_6532]]) + 32
                        else:
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = test266151307()
                            require ext_code.size(address(arg5))
                            call address(arg5).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), test266151307()
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4881 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4881] == bool(mem[_4881])
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _4455 - ext_call.return_data[0] / 100000
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 2
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + 128
                            t = mem[64] + 196
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = stor6
                            require ext_code.size(address(arg1))
                            call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _4455 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6533 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6533] <= test266151307()
                            require _6533 + mem[_6533] + 31 < _6533 + return_data.size
                            if mem[_6533 + mem[_6533]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_6533 + mem[_6533]]) + 1 < 0 or _6533 + ceil32(return_data.size) + ceil32(32 * mem[_6533 + mem[_6533]]) + 1 > test266151307():
                                revert with 0, 65
                            require return_data.size >= mem[_6533] + (32 * mem[_6533 + mem[_6533]]) + 32
                        if _4455 - ext_call.return_data[0] < _4455 - ext_call.return_data[0] / 100000:
                            revert with 0, 17
                        if arg2 > target[address(arg4)].field_0:
                            target[address(arg4)].field_0 = 0
                        else:
                            if target[address(arg4)].field_0 < arg2:
                                revert with 0, 17
                            target[address(arg4)].field_0 -= arg2
                        if arg6 <= _4455 - ext_call.return_data[0] - (_4455 - ext_call.return_data[0] / 100000):
                            if target[address(arg5)].field_0 > !arg6:
                                revert with 0, 17
                            target[address(arg5)].field_0 += arg6
                        else:
                            if target[address(arg5)].field_0 > !(_4455 - ext_call.return_data[0] - (_4455 - ext_call.return_data[0] / 100000)):
                                revert with 0, 17
                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _4455 - ext_call.return_data[0] - (_4455 - ext_call.return_data[0] / 100000)
            else:
                mem[0] = address(arg4)
                mem[32] = 5
                if target[address(arg4)].field_0 <= 0:
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
                if ext_call.return_data[0] >= target[address(arg4)].field_0:
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
                    mem[(4 * ceil32(return_data.size)) + 196] = target[address(arg4)].field_0
                    mem[(4 * ceil32(return_data.size)) + 228] = arg3
                    mem[(4 * ceil32(return_data.size)) + 260] = 160
                    mem[(4 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 128
                    t = (4 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 292] = this.address
                    mem[(4 * ceil32(return_data.size)) + 324] = stor6
                    require ext_code.size(address(arg1))
                    call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args target[address(arg4)].field_0, arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(this.address), stor6
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _2332 = mem[(4 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _2344 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 192]
                    require return_data.size >= _2332 + (32 * _2344) + 32
                    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _2344] = mem[(4 * ceil32(return_data.size)) + _2332 + 224 len 32 * _2344]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4444 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4456 = mem[_4444]
                    _4468 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4468] = 30
                    mem[_4468 + 32] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] > _4456:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if _4456 < ext_call.return_data[0]:
                        revert with 0, 17
                    if _4456 - ext_call.return_data[0] < arg3:
                        revert with 0, 'output not enough'
                    if not arg7:
                        if target[address(arg4)].field_0 <= target[address(arg4)].field_0:
                            if target[address(arg4)].field_0 < target[address(arg4)].field_0:
                                revert with 0, 17
                        target[address(arg4)].field_0 = 0
                        if arg6 <= _4456 - ext_call.return_data[0]:
                            if target[address(arg5)].field_0 > !arg6:
                                revert with 0, 17
                            target[address(arg5)].field_0 += arg6
                        else:
                            if target[address(arg5)].field_0 > !(_4456 - ext_call.return_data[0]):
                                revert with 0, 17
                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _4456 - ext_call.return_data[0]
                    else:
                        mem[(4 * ceil32(return_data.size)) + 128] = address(arg5)
                        mem[(4 * ceil32(return_data.size)) + 160] = address(arg4)
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(arg1)
                        require ext_code.size(address(arg5))
                        staticcall address(arg5).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4690 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_4690] >= _4456 - ext_call.return_data[0] / 100000:
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _4456 - ext_call.return_data[0] / 100000
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 128
                            t = mem[64] + 196
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = stor6
                            require ext_code.size(address(arg1))
                            call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _4456 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6534 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6534] <= test266151307()
                            require _6534 + mem[_6534] + 31 < _6534 + return_data.size
                            if mem[_6534 + mem[_6534]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_6534 + mem[_6534]]) + 1 < 0 or _6534 + ceil32(return_data.size) + ceil32(32 * mem[_6534 + mem[_6534]]) + 1 > test266151307():
                                revert with 0, 65
                            require return_data.size >= mem[_6534] + (32 * mem[_6534 + mem[_6534]]) + 32
                        else:
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = test266151307()
                            require ext_code.size(address(arg5))
                            call address(arg5).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), test266151307()
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4885 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4885] == bool(mem[_4885])
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _4456 - ext_call.return_data[0] / 100000
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 128
                            t = mem[64] + 196
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = stor6
                            require ext_code.size(address(arg1))
                            call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _4456 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6535 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6535] <= test266151307()
                            require _6535 + mem[_6535] + 31 < _6535 + return_data.size
                            if mem[_6535 + mem[_6535]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_6535 + mem[_6535]]) + 1 < 0 or _6535 + ceil32(return_data.size) + ceil32(32 * mem[_6535 + mem[_6535]]) + 1 > test266151307():
                                revert with 0, 65
                            require return_data.size >= mem[_6535] + (32 * mem[_6535 + mem[_6535]]) + 32
                        if _4456 - ext_call.return_data[0] < _4456 - ext_call.return_data[0] / 100000:
                            revert with 0, 17
                        if target[address(arg4)].field_0 <= target[address(arg4)].field_0:
                            if target[address(arg4)].field_0 < target[address(arg4)].field_0:
                                revert with 0, 17
                        target[address(arg4)].field_0 = 0
                        if arg6 <= _4456 - ext_call.return_data[0] - (_4456 - ext_call.return_data[0] / 100000):
                            if target[address(arg5)].field_0 > !arg6:
                                revert with 0, 17
                            target[address(arg5)].field_0 += arg6
                        else:
                            if target[address(arg5)].field_0 > !(_4456 - ext_call.return_data[0] - (_4456 - ext_call.return_data[0] / 100000)):
                                revert with 0, 17
                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _4456 - ext_call.return_data[0] - (_4456 - ext_call.return_data[0] / 100000)
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
                    mem[(6 * ceil32(return_data.size)) + 196] = target[address(arg4)].field_0
                    mem[(6 * ceil32(return_data.size)) + 228] = arg3
                    mem[(6 * ceil32(return_data.size)) + 260] = 160
                    mem[(6 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = (6 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + 292] = this.address
                    mem[(6 * ceil32(return_data.size)) + 324] = stor6
                    require ext_code.size(address(arg1))
                    call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args target[address(arg4)].field_0, arg3, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 388 len 64]), address(this.address), stor6
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (7 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _2333 = mem[(6 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32
                    require mem[(6 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 <= test266151307()
                    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
                    _2345 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 192]
                    if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 192]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 192]) + 193
                    mem[(7 * ceil32(return_data.size)) + 192] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 192]
                    require return_data.size >= _2333 + (32 * _2345) + 32
                    mem[(7 * ceil32(return_data.size)) + 224 len 32 * _2345] = mem[(6 * ceil32(return_data.size)) + _2333 + 224 len 32 * _2345]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4445 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4457 = mem[_4445]
                    _4469 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4469] = 30
                    mem[_4469 + 32] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] > _4457:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if _4457 < ext_call.return_data[0]:
                        revert with 0, 17
                    if _4457 - ext_call.return_data[0] < arg3:
                        revert with 0, 'output not enough'
                    if not arg7:
                        if target[address(arg4)].field_0 <= target[address(arg4)].field_0:
                            if target[address(arg4)].field_0 < target[address(arg4)].field_0:
                                revert with 0, 17
                        target[address(arg4)].field_0 = 0
                        if arg6 <= _4457 - ext_call.return_data[0]:
                            if target[address(arg5)].field_0 > !arg6:
                                revert with 0, 17
                            target[address(arg5)].field_0 += arg6
                        else:
                            if target[address(arg5)].field_0 > !(_4457 - ext_call.return_data[0]):
                                revert with 0, 17
                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _4457 - ext_call.return_data[0]
                    else:
                        mem[(6 * ceil32(return_data.size)) + 128] = address(arg5)
                        mem[(6 * ceil32(return_data.size)) + 160] = address(arg4)
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(arg1)
                        require ext_code.size(address(arg5))
                        staticcall address(arg5).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4693 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_4693] >= _4457 - ext_call.return_data[0] / 100000:
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _4457 - ext_call.return_data[0] / 100000
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 2
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + 128
                            t = mem[64] + 196
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = stor6
                            require ext_code.size(address(arg1))
                            call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _4457 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6536 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6536] <= test266151307()
                            require _6536 + mem[_6536] + 31 < _6536 + return_data.size
                            if mem[_6536 + mem[_6536]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_6536 + mem[_6536]]) + 1 < 0 or _6536 + ceil32(return_data.size) + ceil32(32 * mem[_6536 + mem[_6536]]) + 1 > test266151307():
                                revert with 0, 65
                            require return_data.size >= mem[_6536] + (32 * mem[_6536 + mem[_6536]]) + 32
                        else:
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = test266151307()
                            require ext_code.size(address(arg5))
                            call address(arg5).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), test266151307()
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4889 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4889] == bool(mem[_4889])
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _4457 - ext_call.return_data[0] / 100000
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 2
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + 128
                            t = mem[64] + 196
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = stor6
                            require ext_code.size(address(arg1))
                            call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _4457 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6537 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6537] <= test266151307()
                            require _6537 + mem[_6537] + 31 < _6537 + return_data.size
                            if mem[_6537 + mem[_6537]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_6537 + mem[_6537]]) + 1 < 0 or _6537 + ceil32(return_data.size) + ceil32(32 * mem[_6537 + mem[_6537]]) + 1 > test266151307():
                                revert with 0, 65
                            require return_data.size >= mem[_6537] + (32 * mem[_6537 + mem[_6537]]) + 32
                        if _4457 - ext_call.return_data[0] < _4457 - ext_call.return_data[0] / 100000:
                            revert with 0, 17
                        if target[address(arg4)].field_0 <= target[address(arg4)].field_0:
                            if target[address(arg4)].field_0 < target[address(arg4)].field_0:
                                revert with 0, 17
                        target[address(arg4)].field_0 = 0
                        if arg6 <= _4457 - ext_call.return_data[0] - (_4457 - ext_call.return_data[0] / 100000):
                            if target[address(arg5)].field_0 > !arg6:
                                revert with 0, 17
                            target[address(arg5)].field_0 += arg6
                        else:
                            if target[address(arg5)].field_0 > !(_4457 - ext_call.return_data[0] - (_4457 - ext_call.return_data[0] / 100000)):
                                revert with 0, 17
                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _4457 - ext_call.return_data[0] - (_4457 - ext_call.return_data[0] / 100000)
        else:
            if ext_call.return_data[0] <= target[address(arg4)].field_0:
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
                    s = (4 * ceil32(return_data.size)) + 128
                    t = (4 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
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
                    _2334 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _2346 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    require return_data.size >= _2334 + (32 * _2346) + 32
                    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _2346] = mem[(4 * ceil32(return_data.size)) + _2334 + 224 len 32 * _2346]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4446 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4458 = mem[_4446]
                    _4470 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4470] = 30
                    mem[_4470 + 32] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] > _4458:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if _4458 < ext_call.return_data[0]:
                        revert with 0, 17
                    if _4458 - ext_call.return_data[0] < arg3:
                        revert with 0, 'output not enough'
                    if not arg7:
                        if ext_call.return_data[0] > target[address(arg4)].field_0:
                            target[address(arg4)].field_0 = 0
                        else:
                            if target[address(arg4)].field_0 < ext_call.return_data[0]:
                                revert with 0, 17
                            target[address(arg4)].field_0 -= ext_call.return_data[0]
                        if arg6 <= _4458 - ext_call.return_data[0]:
                            if target[address(arg5)].field_0 > !arg6:
                                revert with 0, 17
                            target[address(arg5)].field_0 += arg6
                        else:
                            if target[address(arg5)].field_0 > !(_4458 - ext_call.return_data[0]):
                                revert with 0, 17
                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _4458 - ext_call.return_data[0]
                    else:
                        mem[(4 * ceil32(return_data.size)) + 128] = address(arg5)
                        mem[(4 * ceil32(return_data.size)) + 160] = address(arg4)
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(arg1)
                        require ext_code.size(address(arg5))
                        staticcall address(arg5).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4696 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_4696] >= _4458 - ext_call.return_data[0] / 100000:
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _4458 - ext_call.return_data[0] / 100000
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 128
                            t = mem[64] + 196
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = stor6
                            require ext_code.size(address(arg1))
                            call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _4458 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6538 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6538] <= test266151307()
                            require _6538 + mem[_6538] + 31 < _6538 + return_data.size
                            if mem[_6538 + mem[_6538]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_6538 + mem[_6538]]) + 1 < 0 or _6538 + ceil32(return_data.size) + ceil32(32 * mem[_6538 + mem[_6538]]) + 1 > test266151307():
                                revert with 0, 65
                            require return_data.size >= mem[_6538] + (32 * mem[_6538 + mem[_6538]]) + 32
                        else:
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = test266151307()
                            require ext_code.size(address(arg5))
                            call address(arg5).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), test266151307()
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4893 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4893] == bool(mem[_4893])
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _4458 - ext_call.return_data[0] / 100000
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 128
                            t = mem[64] + 196
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = stor6
                            require ext_code.size(address(arg1))
                            call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _4458 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6539 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6539] <= test266151307()
                            require _6539 + mem[_6539] + 31 < _6539 + return_data.size
                            if mem[_6539 + mem[_6539]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_6539 + mem[_6539]]) + 1 < 0 or _6539 + ceil32(return_data.size) + ceil32(32 * mem[_6539 + mem[_6539]]) + 1 > test266151307():
                                revert with 0, 65
                            require return_data.size >= mem[_6539] + (32 * mem[_6539 + mem[_6539]]) + 32
                        if _4458 - ext_call.return_data[0] < _4458 - ext_call.return_data[0] / 100000:
                            revert with 0, 17
                        if ext_call.return_data[0] > target[address(arg4)].field_0:
                            target[address(arg4)].field_0 = 0
                        else:
                            if target[address(arg4)].field_0 < ext_call.return_data[0]:
                                revert with 0, 17
                            target[address(arg4)].field_0 -= ext_call.return_data[0]
                        if arg6 <= _4458 - ext_call.return_data[0] - (_4458 - ext_call.return_data[0] / 100000):
                            if target[address(arg5)].field_0 > !arg6:
                                revert with 0, 17
                            target[address(arg5)].field_0 += arg6
                        else:
                            if target[address(arg5)].field_0 > !(_4458 - ext_call.return_data[0] - (_4458 - ext_call.return_data[0] / 100000)):
                                revert with 0, 17
                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _4458 - ext_call.return_data[0] - (_4458 - ext_call.return_data[0] / 100000)
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
                    s = (6 * ceil32(return_data.size)) + 128
                    t = (6 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
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
                    _2335 = mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                    require mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
                    _2347 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                    mem[(7 * ceil32(return_data.size)) + 192] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    require return_data.size >= _2335 + (32 * _2347) + 32
                    mem[(7 * ceil32(return_data.size)) + 224 len 32 * _2347] = mem[(6 * ceil32(return_data.size)) + _2335 + 224 len 32 * _2347]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4447 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4459 = mem[_4447]
                    _4471 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4471] = 30
                    mem[_4471 + 32] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] > _4459:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if _4459 < ext_call.return_data[0]:
                        revert with 0, 17
                    if _4459 - ext_call.return_data[0] < arg3:
                        revert with 0, 'output not enough'
                    if not arg7:
                        if ext_call.return_data[0] > target[address(arg4)].field_0:
                            target[address(arg4)].field_0 = 0
                        else:
                            if target[address(arg4)].field_0 < ext_call.return_data[0]:
                                revert with 0, 17
                            target[address(arg4)].field_0 -= ext_call.return_data[0]
                        if arg6 <= _4459 - ext_call.return_data[0]:
                            if target[address(arg5)].field_0 > !arg6:
                                revert with 0, 17
                            target[address(arg5)].field_0 += arg6
                        else:
                            if target[address(arg5)].field_0 > !(_4459 - ext_call.return_data[0]):
                                revert with 0, 17
                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _4459 - ext_call.return_data[0]
                    else:
                        mem[(6 * ceil32(return_data.size)) + 128] = address(arg5)
                        mem[(6 * ceil32(return_data.size)) + 160] = address(arg4)
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(arg1)
                        require ext_code.size(address(arg5))
                        staticcall address(arg5).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4699 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_4699] >= _4459 - ext_call.return_data[0] / 100000:
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _4459 - ext_call.return_data[0] / 100000
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 2
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + 128
                            t = mem[64] + 196
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = stor6
                            require ext_code.size(address(arg1))
                            call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _4459 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6540 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6540] <= test266151307()
                            require _6540 + mem[_6540] + 31 < _6540 + return_data.size
                            if mem[_6540 + mem[_6540]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_6540 + mem[_6540]]) + 1 < 0 or _6540 + ceil32(return_data.size) + ceil32(32 * mem[_6540 + mem[_6540]]) + 1 > test266151307():
                                revert with 0, 65
                            require return_data.size >= mem[_6540] + (32 * mem[_6540 + mem[_6540]]) + 32
                        else:
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = test266151307()
                            require ext_code.size(address(arg5))
                            call address(arg5).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), test266151307()
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4897 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4897] == bool(mem[_4897])
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _4459 - ext_call.return_data[0] / 100000
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 2
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + 128
                            t = mem[64] + 196
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = stor6
                            require ext_code.size(address(arg1))
                            call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _4459 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6541 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6541] <= test266151307()
                            require _6541 + mem[_6541] + 31 < _6541 + return_data.size
                            if mem[_6541 + mem[_6541]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_6541 + mem[_6541]]) + 1 < 0 or _6541 + ceil32(return_data.size) + ceil32(32 * mem[_6541 + mem[_6541]]) + 1 > test266151307():
                                revert with 0, 65
                            require return_data.size >= mem[_6541] + (32 * mem[_6541 + mem[_6541]]) + 32
                        if _4459 - ext_call.return_data[0] < _4459 - ext_call.return_data[0] / 100000:
                            revert with 0, 17
                        if ext_call.return_data[0] > target[address(arg4)].field_0:
                            target[address(arg4)].field_0 = 0
                        else:
                            if target[address(arg4)].field_0 < ext_call.return_data[0]:
                                revert with 0, 17
                            target[address(arg4)].field_0 -= ext_call.return_data[0]
                        if arg6 <= _4459 - ext_call.return_data[0] - (_4459 - ext_call.return_data[0] / 100000):
                            if target[address(arg5)].field_0 > !arg6:
                                revert with 0, 17
                            target[address(arg5)].field_0 += arg6
                        else:
                            if target[address(arg5)].field_0 > !(_4459 - ext_call.return_data[0] - (_4459 - ext_call.return_data[0] / 100000)):
                                revert with 0, 17
                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _4459 - ext_call.return_data[0] - (_4459 - ext_call.return_data[0] / 100000)
            else:
                mem[0] = address(arg4)
                mem[32] = 5
                if target[address(arg4)].field_0 <= 0:
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
                if ext_call.return_data[0] >= target[address(arg4)].field_0:
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
                    mem[(4 * ceil32(return_data.size)) + 196] = target[address(arg4)].field_0
                    mem[(4 * ceil32(return_data.size)) + 228] = arg3
                    mem[(4 * ceil32(return_data.size)) + 260] = 160
                    mem[(4 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 128
                    t = (4 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 292] = this.address
                    mem[(4 * ceil32(return_data.size)) + 324] = stor6
                    require ext_code.size(address(arg1))
                    call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args target[address(arg4)].field_0, arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(this.address), stor6
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _2336 = mem[(4 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _2348 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 192]
                    require return_data.size >= _2336 + (32 * _2348) + 32
                    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _2348] = mem[(4 * ceil32(return_data.size)) + _2336 + 224 len 32 * _2348]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4448 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4460 = mem[_4448]
                    _4472 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4472] = 30
                    mem[_4472 + 32] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] > _4460:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if _4460 < ext_call.return_data[0]:
                        revert with 0, 17
                    if _4460 - ext_call.return_data[0] < arg3:
                        revert with 0, 'output not enough'
                    if not arg7:
                        if target[address(arg4)].field_0 <= target[address(arg4)].field_0:
                            if target[address(arg4)].field_0 < target[address(arg4)].field_0:
                                revert with 0, 17
                        target[address(arg4)].field_0 = 0
                        if arg6 <= _4460 - ext_call.return_data[0]:
                            if target[address(arg5)].field_0 > !arg6:
                                revert with 0, 17
                            target[address(arg5)].field_0 += arg6
                        else:
                            if target[address(arg5)].field_0 > !(_4460 - ext_call.return_data[0]):
                                revert with 0, 17
                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _4460 - ext_call.return_data[0]
                    else:
                        mem[(4 * ceil32(return_data.size)) + 128] = address(arg5)
                        mem[(4 * ceil32(return_data.size)) + 160] = address(arg4)
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(arg1)
                        require ext_code.size(address(arg5))
                        staticcall address(arg5).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4702 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_4702] >= _4460 - ext_call.return_data[0] / 100000:
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _4460 - ext_call.return_data[0] / 100000
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 128
                            t = mem[64] + 196
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = stor6
                            require ext_code.size(address(arg1))
                            call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _4460 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6542 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6542] <= test266151307()
                            require _6542 + mem[_6542] + 31 < _6542 + return_data.size
                            if mem[_6542 + mem[_6542]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_6542 + mem[_6542]]) + 1 < 0 or _6542 + ceil32(return_data.size) + ceil32(32 * mem[_6542 + mem[_6542]]) + 1 > test266151307():
                                revert with 0, 65
                            require return_data.size >= mem[_6542] + (32 * mem[_6542 + mem[_6542]]) + 32
                        else:
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = test266151307()
                            require ext_code.size(address(arg5))
                            call address(arg5).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), test266151307()
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4901 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4901] == bool(mem[_4901])
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _4460 - ext_call.return_data[0] / 100000
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 128
                            t = mem[64] + 196
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = stor6
                            require ext_code.size(address(arg1))
                            call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _4460 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6543 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6543] <= test266151307()
                            require _6543 + mem[_6543] + 31 < _6543 + return_data.size
                            if mem[_6543 + mem[_6543]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_6543 + mem[_6543]]) + 1 < 0 or _6543 + ceil32(return_data.size) + ceil32(32 * mem[_6543 + mem[_6543]]) + 1 > test266151307():
                                revert with 0, 65
                            require return_data.size >= mem[_6543] + (32 * mem[_6543 + mem[_6543]]) + 32
                        if _4460 - ext_call.return_data[0] < _4460 - ext_call.return_data[0] / 100000:
                            revert with 0, 17
                        if target[address(arg4)].field_0 <= target[address(arg4)].field_0:
                            if target[address(arg4)].field_0 < target[address(arg4)].field_0:
                                revert with 0, 17
                        target[address(arg4)].field_0 = 0
                        if arg6 <= _4460 - ext_call.return_data[0] - (_4460 - ext_call.return_data[0] / 100000):
                            if target[address(arg5)].field_0 > !arg6:
                                revert with 0, 17
                            target[address(arg5)].field_0 += arg6
                        else:
                            if target[address(arg5)].field_0 > !(_4460 - ext_call.return_data[0] - (_4460 - ext_call.return_data[0] / 100000)):
                                revert with 0, 17
                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _4460 - ext_call.return_data[0] - (_4460 - ext_call.return_data[0] / 100000)
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
                    mem[(6 * ceil32(return_data.size)) + 196] = target[address(arg4)].field_0
                    mem[(6 * ceil32(return_data.size)) + 228] = arg3
                    mem[(6 * ceil32(return_data.size)) + 260] = 160
                    mem[(6 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = (6 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + 292] = this.address
                    mem[(6 * ceil32(return_data.size)) + 324] = stor6
                    require ext_code.size(address(arg1))
                    call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args target[address(arg4)].field_0, arg3, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 388 len 64]), address(this.address), stor6
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (7 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _2337 = mem[(6 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32
                    require mem[(6 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 <= test266151307()
                    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
                    _2349 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 192]
                    if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 192] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 192]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 192]) + 193 > test266151307():
                        revert with 0, 65
                    mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 192]) + 193
                    mem[(7 * ceil32(return_data.size)) + 192] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], target[address(arg4)].field_32 + 192]
                    require return_data.size >= _2337 + (32 * _2349) + 32
                    mem[(7 * ceil32(return_data.size)) + 224 len 32 * _2349] = mem[(6 * ceil32(return_data.size)) + _2337 + 224 len 32 * _2349]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4449 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4461 = mem[_4449]
                    _4473 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4473] = 30
                    mem[_4473 + 32] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] > _4461:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if _4461 < ext_call.return_data[0]:
                        revert with 0, 17
                    if _4461 - ext_call.return_data[0] < arg3:
                        revert with 0, 'output not enough'
                    if not arg7:
                        if target[address(arg4)].field_0 <= target[address(arg4)].field_0:
                            if target[address(arg4)].field_0 < target[address(arg4)].field_0:
                                revert with 0, 17
                        target[address(arg4)].field_0 = 0
                        if arg6 <= _4461 - ext_call.return_data[0]:
                            if target[address(arg5)].field_0 > !arg6:
                                revert with 0, 17
                            target[address(arg5)].field_0 += arg6
                        else:
                            if target[address(arg5)].field_0 > !(_4461 - ext_call.return_data[0]):
                                revert with 0, 17
                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _4461 - ext_call.return_data[0]
                    else:
                        mem[(6 * ceil32(return_data.size)) + 128] = address(arg5)
                        mem[(6 * ceil32(return_data.size)) + 160] = address(arg4)
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = address(arg1)
                        require ext_code.size(address(arg5))
                        staticcall address(arg5).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4705 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_4705] >= _4461 - ext_call.return_data[0] / 100000:
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _4461 - ext_call.return_data[0] / 100000
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 2
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + 128
                            t = mem[64] + 196
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = stor6
                            require ext_code.size(address(arg1))
                            call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _4461 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6544 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6544] <= test266151307()
                            require _6544 + mem[_6544] + 31 < _6544 + return_data.size
                            if mem[_6544 + mem[_6544]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_6544 + mem[_6544]]) + 1 < 0 or _6544 + ceil32(return_data.size) + ceil32(32 * mem[_6544 + mem[_6544]]) + 1 > test266151307():
                                revert with 0, 65
                            require return_data.size >= mem[_6544] + (32 * mem[_6544 + mem[_6544]]) + 32
                        else:
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = test266151307()
                            require ext_code.size(address(arg5))
                            call address(arg5).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), test266151307()
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4905 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4905] == bool(mem[_4905])
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _4461 - ext_call.return_data[0] / 100000
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 2
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + 128
                            t = mem[64] + 196
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = stor6
                            require ext_code.size(address(arg1))
                            call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _4461 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6545 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6545] <= test266151307()
                            require _6545 + mem[_6545] + 31 < _6545 + return_data.size
                            if mem[_6545 + mem[_6545]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_6545 + mem[_6545]]) + 1 < 0 or _6545 + ceil32(return_data.size) + ceil32(32 * mem[_6545 + mem[_6545]]) + 1 > test266151307():
                                revert with 0, 65
                            require return_data.size >= mem[_6545] + (32 * mem[_6545 + mem[_6545]]) + 32
                        if _4461 - ext_call.return_data[0] < _4461 - ext_call.return_data[0] / 100000:
                            revert with 0, 17
                        if target[address(arg4)].field_0 <= target[address(arg4)].field_0:
                            if target[address(arg4)].field_0 < target[address(arg4)].field_0:
                                revert with 0, 17
                        target[address(arg4)].field_0 = 0
                        if arg6 <= _4461 - ext_call.return_data[0] - (_4461 - ext_call.return_data[0] / 100000):
                            if target[address(arg5)].field_0 > !arg6:
                                revert with 0, 17
                            target[address(arg5)].field_0 += arg6
                        else:
                            if target[address(arg5)].field_0 > !(_4461 - ext_call.return_data[0] - (_4461 - ext_call.return_data[0] / 100000)):
                                revert with 0, 17
                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _4461 - ext_call.return_data[0] - (_4461 - ext_call.return_data[0] / 100000)
    if not sub_ba27f50b[address(arg4)]:
        if stor4 > -2:
            revert with 0, 17
        stor4++
        sub_ba27f50b[address(arg4)] = stor4
        tokenList[stor4] = address(arg4)
    if not sub_ba27f50b[address(arg5)]:
        if stor4 > -2:
            revert with 0, 17
        stor4++
        sub_ba27f50b[address(arg5)] = stor4
        tokenList[stor4] = address(arg5)
}



}
