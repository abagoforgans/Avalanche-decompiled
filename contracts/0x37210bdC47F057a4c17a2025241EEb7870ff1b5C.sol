contract main {




// =====================  Runtime code  =====================


#
#  - sub_10a385de(?)
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
        revert with arg2[all]
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

function _fallback() payable {
    mem[64] = 128
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x8da5cb5b(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xd5d7ff3c(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                if unknown_0x946b5793(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require arg1 == bool(arg1)
                    require arg2 <= test266151307()
                    require arg2 + 35 < calldata.size
                    if arg2.length > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(arg2.length)) + 129 < 128 or ceil32(ceil32(arg2.length)) + 129 > test266151307():
                        revert with 0, 65
                    require arg2 + arg2.length + 36 <= calldata.size
                    require arg3 <= test266151307()
                    require calldata.size > arg3 + 35
                    if arg3.length > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(arg3.length)) + 130 < 129 or ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 130 > test266151307():
                        revert with 0, 65
                    require arg3 + arg3.length + 36 <= calldata.size
                    if arg1:
                    if arg2.length:
                        revert with arg2[all]
                    revert with 0, 
                                32,
                                arg3.length,
                                arg3[all],
                                Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 27) + 256, 32) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 27) + 256
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
                if unknown_0xd5d7ff3c(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    target[address(arg1)].field_0 = 0
                else:
                    if unknown_0xdad69c20(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        stor1[address(arg1)] = 0
                    else:
                        if unknown_0xdad9da8a(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            return target[arg1].field_0
                        if uint32(call.func_hash) >> 224 != unknown_0xe551b351(?????):
                            if uint32(call.func_hash) >> 224 != unknown_0xf43cf9e6(?????):
                                require unknown_0xfa0fca84(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require arg1 == address(arg1)
                                return bool(stor1[arg1])
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
                            require not msg.value
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
        else:
            if unknown_0x4229dbe3(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x4229dbe3(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return eth.balance(this.address)
                if unknown_0x4b8eb24c(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
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
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x51663fd4(?????):
                        if unknown_0x6088e93a(?????) == uint32(call.func_hash) >> 224:
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
                            if uint32(call.func_hash) >> 224 != unknown_0x853828b6(?????):
                                require unknown_0x8b09832d(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require arg1 == address(arg1)
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                stor1[address(arg1)] = 1
                            else:
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
                                    _4745 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4745] == mem[_4745 + 31 len 1]
                                    if not mem[_4745 + 31 len 1]:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(tokenList[idx])
                                        staticcall tokenList[idx].0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4975 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5004 = mem[_4975]
                                        if mem[_4975]:
                                            mem[mem[64] + 4] = owner
                                            mem[mem[64] + 36] = _5004
                                            require ext_code.size(tokenList[idx])
                                            call tokenList[idx].0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(stor0.field_0), _5004
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5098 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5098] == bool(mem[_5098])
                                    else:
                                        if bool(bool(mem[_4745 + 31 len 1] < 78)) or bool(bool(mem[_4745 + 31 len 1] < 32)):
                                            if False and 10^mem[_4745 + 31 len 1] > 0:
                                                revert with 0, 17
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(tokenList[idx])
                                            staticcall tokenList[idx].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5038 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5096 = mem[_5038]
                                            if mem[_5038]:
                                                mem[mem[64] + 4] = owner
                                                mem[mem[64] + 36] = _5096
                                                require ext_code.size(tokenList[idx])
                                                call tokenList[idx].0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(stor0.field_0), _5096
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5208 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5208] == bool(mem[_5208])
                                        else:
                                            t = 10
                                            u = 1
                                            s = mem[_4745 + 31 len 1]
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
                                            _9208 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _9234 = mem[_9208]
                                            if mem[_9208]:
                                                mem[mem[64] + 4] = owner
                                                mem[mem[64] + 36] = _9234
                                                require ext_code.size(tokenList[idx])
                                                call tokenList[idx].0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(stor0.field_0), _9234
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _9408 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_9408] == bool(mem[_9408])
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
                    else:
                        require not msg.value
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
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x10a385de(?????):
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
                        while idx <= stor4:
                            mem[0] = idx
                            mem[32] = 2
                            require ext_code.size(tokenList[idx])
                            staticcall tokenList[idx].0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4743 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4743] == mem[_4743 + 31 len 1]
                            if not mem[_4743 + 31 len 1]:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenList[idx])
                                staticcall tokenList[idx].0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4974 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5003 = mem[_4974]
                                if mem[_4974]:
                                    mem[mem[64] + 4] = owner
                                    mem[mem[64] + 36] = _5003
                                    require ext_code.size(tokenList[idx])
                                    call tokenList[idx].0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(stor0.field_0), _5003
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5097 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5097] == bool(mem[_5097])
                            else:
                                if bool(bool(mem[_4743 + 31 len 1] < 78)) or bool(bool(mem[_4743 + 31 len 1] < 32)):
                                    if False and 10^mem[_4743 + 31 len 1] > 0:
                                        revert with 0, 17
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(tokenList[idx])
                                    staticcall tokenList[idx].0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5036 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5093 = mem[_5036]
                                    if mem[_5036]:
                                        mem[mem[64] + 4] = owner
                                        mem[mem[64] + 36] = _5093
                                        require ext_code.size(tokenList[idx])
                                        call tokenList[idx].0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(stor0.field_0), _5093
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5207 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5207] == bool(mem[_5207])
                                else:
                                    t = 10
                                    u = 1
                                    s = mem[_4743 + 31 len 1]
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
                                    _9207 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _9233 = mem[_9207]
                                    if mem[_9207]:
                                        mem[mem[64] + 4] = owner
                                        mem[mem[64] + 36] = _9233
                                        require ext_code.size(tokenList[idx])
                                        call tokenList[idx].0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(stor0.field_0), _9233
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9407 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_9407] == bool(mem[_9407])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    if unknown_0x1b52b9de(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if eth.balance(this.address):
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
                require not msg.value
                require calldata.size - 4 >= 256
                require arg1 == address(arg1)
                require arg4 == address(arg4)
                require arg5 == address(arg5)
                require arg7 == bool(arg7)
                require arg8 == bool(arg8)
                if not stor1[msg.sender]:
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
                    if ext_call.return_data[0] <= target[address(arg4)].field_0:
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
                            if arg8:
                                mem[(4 * ceil32(return_data.size)) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 228] = arg3
                                mem[(4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                                mem[(4 * ceil32(return_data.size)) + 292] = 160
                                mem[(4 * ceil32(return_data.size)) + 388] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 160
                                t = (4 * ceil32(return_data.size)) + 420
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 324] = this.address
                                mem[(4 * ceil32(return_data.size)) + 356] = stor6
                                require ext_code.size(address(arg1))
                                call address(arg1).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, ext_call.return_data[0], Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 420 len 64]), address(this.address), stor6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (6 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _4791 = mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255 < (4 * ceil32(return_data.size)) + return_data.size + 224
                                _4815 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307():
                                    revert with 0, 65
                                mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                                mem[(6 * ceil32(return_data.size)) + 224] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                                require return_data.size >= _4791 + (32 * _4815) + 32
                                mem[(6 * ceil32(return_data.size)) + 256 len 32 * _4815] = mem[(4 * ceil32(return_data.size)) + _4791 + 256 len 32 * _4815]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg5))
                                staticcall address(arg5).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9099 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _9123 = mem[_9099]
                                _9147 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9147] = 30
                                mem[_9147 + 32] = 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] > _9123:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if _9123 < ext_call.return_data[0]:
                                    revert with 0, 17
                                if _9123 - ext_call.return_data[0] < arg3:
                                    revert with 0, 'output not enough'
                                if not arg7:
                                    if ext_call.return_data[0] > target[address(arg4)].field_0:
                                        target[address(arg4)].field_0 = 0
                                    else:
                                        if target[address(arg4)].field_0 < ext_call.return_data[0]:
                                            revert with 0, 17
                                        target[address(arg4)].field_0 -= ext_call.return_data[0]
                                    if arg6 <= _9123 - ext_call.return_data[0]:
                                        if target[address(arg5)].field_0 > !arg6:
                                            revert with 0, 17
                                        target[address(arg5)].field_0 += arg6
                                    else:
                                        if target[address(arg5)].field_0 > !(_9123 - ext_call.return_data[0]):
                                            revert with 0, 17
                                        target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9123 - ext_call.return_data[0]
                                else:
                                    mem[(4 * ceil32(return_data.size)) + 160] = address(arg5)
                                    mem[(4 * ceil32(return_data.size)) + 192] = address(arg4)
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = address(arg1)
                                    require ext_code.size(address(arg5))
                                    staticcall address(arg5).0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, address(arg1)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9629 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_9629] >= _9123 - ext_call.return_data[0] / 100000:
                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _9123 - ext_call.return_data[0] / 100000
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 160
                                        mem[mem[64] + 164] = 2
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + 160
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
                                            args _9123 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _13307 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_13307] <= test266151307()
                                        require _13307 + mem[_13307] + 31 < _13307 + return_data.size
                                        if mem[_13307 + mem[_13307]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_13307 + mem[_13307]]) + 1 < 0 or _13307 + ceil32(return_data.size) + ceil32(32 * mem[_13307 + mem[_13307]]) + 1 > test266151307():
                                            revert with 0, 65
                                        require return_data.size >= mem[_13307] + (32 * mem[_13307 + mem[_13307]]) + 32
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
                                        _10030 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_10030] == bool(mem[_10030])
                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _9123 - ext_call.return_data[0] / 100000
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 160
                                        mem[mem[64] + 164] = 2
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + 160
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
                                            args _9123 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _13308 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_13308] <= test266151307()
                                        require _13308 + mem[_13308] + 31 < _13308 + return_data.size
                                        if mem[_13308 + mem[_13308]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_13308 + mem[_13308]]) + 1 < 0 or _13308 + ceil32(return_data.size) + ceil32(32 * mem[_13308 + mem[_13308]]) + 1 > test266151307():
                                            revert with 0, 65
                                        require return_data.size >= mem[_13308] + (32 * mem[_13308 + mem[_13308]]) + 32
                                    if _9123 - ext_call.return_data[0] < _9123 - ext_call.return_data[0] / 100000:
                                        revert with 0, 17
                                    if ext_call.return_data[0] > target[address(arg4)].field_0:
                                        target[address(arg4)].field_0 = 0
                                    else:
                                        if target[address(arg4)].field_0 < ext_call.return_data[0]:
                                            revert with 0, 17
                                        target[address(arg4)].field_0 -= ext_call.return_data[0]
                                    if arg6 <= _9123 - ext_call.return_data[0] - (_9123 - ext_call.return_data[0] / 100000):
                                        if target[address(arg5)].field_0 > !arg6:
                                            revert with 0, 17
                                        target[address(arg5)].field_0 += arg6
                                    else:
                                        if target[address(arg5)].field_0 > !(_9123 - ext_call.return_data[0] - (_9123 - ext_call.return_data[0] / 100000)):
                                            revert with 0, 17
                                        target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9123 - ext_call.return_data[0] - (_9123 - ext_call.return_data[0] / 100000)
                            else:
                                mem[(4 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                                mem[(4 * ceil32(return_data.size)) + 260] = arg3
                                mem[(4 * ceil32(return_data.size)) + 292] = 160
                                mem[(4 * ceil32(return_data.size)) + 388] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 160
                                t = (4 * ceil32(return_data.size)) + 420
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
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
                                _4792 = mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
                                require mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255 < (4 * ceil32(return_data.size)) + return_data.size + 224
                                _4816 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307():
                                    revert with 0, 65
                                mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
                                mem[(6 * ceil32(return_data.size)) + 224] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                require return_data.size >= _4792 + (32 * _4816) + 32
                                mem[(6 * ceil32(return_data.size)) + 256 len 32 * _4816] = mem[(4 * ceil32(return_data.size)) + _4792 + 256 len 32 * _4816]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg5))
                                staticcall address(arg5).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9100 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _9124 = mem[_9100]
                                _9148 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9148] = 30
                                mem[_9148 + 32] = 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] > _9124:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if _9124 < ext_call.return_data[0]:
                                    revert with 0, 17
                                if _9124 - ext_call.return_data[0] < arg3:
                                    revert with 0, 'output not enough'
                                if not arg7:
                                    if ext_call.return_data[0] > target[address(arg4)].field_0:
                                        target[address(arg4)].field_0 = 0
                                    else:
                                        if target[address(arg4)].field_0 < ext_call.return_data[0]:
                                            revert with 0, 17
                                        target[address(arg4)].field_0 -= ext_call.return_data[0]
                                    if arg6 <= _9124 - ext_call.return_data[0]:
                                        if target[address(arg5)].field_0 > !arg6:
                                            revert with 0, 17
                                        target[address(arg5)].field_0 += arg6
                                    else:
                                        if target[address(arg5)].field_0 > !(_9124 - ext_call.return_data[0]):
                                            revert with 0, 17
                                        target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9124 - ext_call.return_data[0]
                                else:
                                    mem[(4 * ceil32(return_data.size)) + 160] = address(arg5)
                                    mem[(4 * ceil32(return_data.size)) + 192] = address(arg4)
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = address(arg1)
                                    require ext_code.size(address(arg5))
                                    staticcall address(arg5).0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, address(arg1)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9632 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_9632] >= _9124 - ext_call.return_data[0] / 100000:
                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _9124 - ext_call.return_data[0] / 100000
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 160
                                        mem[mem[64] + 164] = 2
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + 160
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
                                            args _9124 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _13309 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_13309] <= test266151307()
                                        require _13309 + mem[_13309] + 31 < _13309 + return_data.size
                                        if mem[_13309 + mem[_13309]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_13309 + mem[_13309]]) + 1 < 0 or _13309 + ceil32(return_data.size) + ceil32(32 * mem[_13309 + mem[_13309]]) + 1 > test266151307():
                                            revert with 0, 65
                                        require return_data.size >= mem[_13309] + (32 * mem[_13309 + mem[_13309]]) + 32
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
                                        _10034 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_10034] == bool(mem[_10034])
                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _9124 - ext_call.return_data[0] / 100000
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 160
                                        mem[mem[64] + 164] = 2
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + 160
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
                                            args _9124 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _13310 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_13310] <= test266151307()
                                        require _13310 + mem[_13310] + 31 < _13310 + return_data.size
                                        if mem[_13310 + mem[_13310]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_13310 + mem[_13310]]) + 1 < 0 or _13310 + ceil32(return_data.size) + ceil32(32 * mem[_13310 + mem[_13310]]) + 1 > test266151307():
                                            revert with 0, 65
                                        require return_data.size >= mem[_13310] + (32 * mem[_13310 + mem[_13310]]) + 32
                                    if _9124 - ext_call.return_data[0] < _9124 - ext_call.return_data[0] / 100000:
                                        revert with 0, 17
                                    if ext_call.return_data[0] > target[address(arg4)].field_0:
                                        target[address(arg4)].field_0 = 0
                                    else:
                                        if target[address(arg4)].field_0 < ext_call.return_data[0]:
                                            revert with 0, 17
                                        target[address(arg4)].field_0 -= ext_call.return_data[0]
                                    if arg6 <= _9124 - ext_call.return_data[0] - (_9124 - ext_call.return_data[0] / 100000):
                                        if target[address(arg5)].field_0 > !arg6:
                                            revert with 0, 17
                                        target[address(arg5)].field_0 += arg6
                                    else:
                                        if target[address(arg5)].field_0 > !(_9124 - ext_call.return_data[0] - (_9124 - ext_call.return_data[0] / 100000)):
                                            revert with 0, 17
                                        target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9124 - ext_call.return_data[0] - (_9124 - ext_call.return_data[0] / 100000)
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
                            if arg8:
                                mem[(6 * ceil32(return_data.size)) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[(6 * ceil32(return_data.size)) + 228] = arg3
                                mem[(6 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                                mem[(6 * ceil32(return_data.size)) + 292] = 160
                                mem[(6 * ceil32(return_data.size)) + 388] = 2
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + 160
                                t = (6 * ceil32(return_data.size)) + 420
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(6 * ceil32(return_data.size)) + 324] = this.address
                                mem[(6 * ceil32(return_data.size)) + 356] = stor6
                                require ext_code.size(address(arg1))
                                call address(arg1).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, ext_call.return_data[0], Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 420 len 64]), address(this.address), stor6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (7 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _4793 = mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255 < (6 * ceil32(return_data.size)) + return_data.size + 224
                                _4817 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                                if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307():
                                    revert with 0, 65
                                mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                                mem[(7 * ceil32(return_data.size)) + 224] = _4817
                                require return_data.size >= _4793 + (32 * _4817) + 32
                                mem[(7 * ceil32(return_data.size)) + 256 len 32 * _4817] = mem[(6 * ceil32(return_data.size)) + _4793 + 256 len 32 * _4817]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg5))
                                staticcall address(arg5).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9101 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _9125 = mem[_9101]
                                _9149 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9149] = 30
                                mem[_9149 + 32] = 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] > _9125:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if _9125 < ext_call.return_data[0]:
                                    revert with 0, 17
                                if _9125 - ext_call.return_data[0] < arg3:
                                    revert with 0, 'output not enough'
                                if not arg7:
                                    if ext_call.return_data[0] > target[address(arg4)].field_0:
                                        target[address(arg4)].field_0 = 0
                                    else:
                                        if target[address(arg4)].field_0 < ext_call.return_data[0]:
                                            revert with 0, 17
                                        target[address(arg4)].field_0 -= ext_call.return_data[0]
                                    if arg6 <= _9125 - ext_call.return_data[0]:
                                        if target[address(arg5)].field_0 > !arg6:
                                            revert with 0, 17
                                        target[address(arg5)].field_0 += arg6
                                    else:
                                        if target[address(arg5)].field_0 > !(_9125 - ext_call.return_data[0]):
                                            revert with 0, 17
                                        target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9125 - ext_call.return_data[0]
                                else:
                                    mem[(6 * ceil32(return_data.size)) + 160] = address(arg5)
                                    mem[(6 * ceil32(return_data.size)) + 192] = address(arg4)
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = address(arg1)
                                    require ext_code.size(address(arg5))
                                    staticcall address(arg5).0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, address(arg1)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9635 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_9635] >= _9125 - ext_call.return_data[0] / 100000:
                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _9125 - ext_call.return_data[0] / 100000
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 160
                                        mem[mem[64] + 164] = 2
                                        idx = 0
                                        s = (6 * ceil32(return_data.size)) + 160
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
                                            args _9125 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _13311 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_13311] <= test266151307()
                                        require _13311 + mem[_13311] + 31 < _13311 + return_data.size
                                        if mem[_13311 + mem[_13311]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_13311 + mem[_13311]]) + 1 < 0 or _13311 + ceil32(return_data.size) + ceil32(32 * mem[_13311 + mem[_13311]]) + 1 > test266151307():
                                            revert with 0, 65
                                        require return_data.size >= mem[_13311] + (32 * mem[_13311 + mem[_13311]]) + 32
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
                                        _10038 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_10038] == bool(mem[_10038])
                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _9125 - ext_call.return_data[0] / 100000
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 160
                                        mem[mem[64] + 164] = 2
                                        idx = 0
                                        s = (6 * ceil32(return_data.size)) + 160
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
                                            args _9125 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _13312 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_13312] <= test266151307()
                                        require _13312 + mem[_13312] + 31 < _13312 + return_data.size
                                        if mem[_13312 + mem[_13312]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_13312 + mem[_13312]]) + 1 < 0 or _13312 + ceil32(return_data.size) + ceil32(32 * mem[_13312 + mem[_13312]]) + 1 > test266151307():
                                            revert with 0, 65
                                        require return_data.size >= mem[_13312] + (32 * mem[_13312 + mem[_13312]]) + 32
                                    if _9125 - ext_call.return_data[0] < _9125 - ext_call.return_data[0] / 100000:
                                        revert with 0, 17
                                    if ext_call.return_data[0] > target[address(arg4)].field_0:
                                        target[address(arg4)].field_0 = 0
                                    else:
                                        if target[address(arg4)].field_0 < ext_call.return_data[0]:
                                            revert with 0, 17
                                        target[address(arg4)].field_0 -= ext_call.return_data[0]
                                    if arg6 <= _9125 - ext_call.return_data[0] - (_9125 - ext_call.return_data[0] / 100000):
                                        if target[address(arg5)].field_0 > !arg6:
                                            revert with 0, 17
                                        target[address(arg5)].field_0 += arg6
                                    else:
                                        if target[address(arg5)].field_0 > !(_9125 - ext_call.return_data[0] - (_9125 - ext_call.return_data[0] / 100000)):
                                            revert with 0, 17
                                        target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9125 - ext_call.return_data[0] - (_9125 - ext_call.return_data[0] / 100000)
                            else:
                                mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(6 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                                mem[(6 * ceil32(return_data.size)) + 260] = arg3
                                mem[(6 * ceil32(return_data.size)) + 292] = 160
                                mem[(6 * ceil32(return_data.size)) + 388] = 2
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + 160
                                t = (6 * ceil32(return_data.size)) + 420
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
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
                                _4794 = mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
                                require mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255 < (6 * ceil32(return_data.size)) + return_data.size + 224
                                _4818 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307():
                                    revert with 0, 65
                                mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
                                mem[(7 * ceil32(return_data.size)) + 224] = _4818
                                require return_data.size >= _4794 + (32 * _4818) + 32
                                mem[(7 * ceil32(return_data.size)) + 256 len 32 * _4818] = mem[(6 * ceil32(return_data.size)) + _4794 + 256 len 32 * _4818]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg5))
                                staticcall address(arg5).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9102 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _9126 = mem[_9102]
                                _9150 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9150] = 30
                                mem[_9150 + 32] = 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] > _9126:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if _9126 < ext_call.return_data[0]:
                                    revert with 0, 17
                                if _9126 - ext_call.return_data[0] < arg3:
                                    revert with 0, 'output not enough'
                                if not arg7:
                                    if ext_call.return_data[0] > target[address(arg4)].field_0:
                                        target[address(arg4)].field_0 = 0
                                    else:
                                        if target[address(arg4)].field_0 < ext_call.return_data[0]:
                                            revert with 0, 17
                                        target[address(arg4)].field_0 -= ext_call.return_data[0]
                                    if arg6 <= _9126 - ext_call.return_data[0]:
                                        if target[address(arg5)].field_0 > !arg6:
                                            revert with 0, 17
                                        target[address(arg5)].field_0 += arg6
                                    else:
                                        if target[address(arg5)].field_0 > !(_9126 - ext_call.return_data[0]):
                                            revert with 0, 17
                                        target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9126 - ext_call.return_data[0]
                                else:
                                    mem[(6 * ceil32(return_data.size)) + 160] = address(arg5)
                                    mem[(6 * ceil32(return_data.size)) + 192] = address(arg4)
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = address(arg1)
                                    require ext_code.size(address(arg5))
                                    staticcall address(arg5).0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, address(arg1)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9638 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_9638] >= _9126 - ext_call.return_data[0] / 100000:
                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _9126 - ext_call.return_data[0] / 100000
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 160
                                        mem[mem[64] + 164] = 2
                                        idx = 0
                                        s = (6 * ceil32(return_data.size)) + 160
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
                                            args _9126 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _13313 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_13313] <= test266151307()
                                        require _13313 + mem[_13313] + 31 < _13313 + return_data.size
                                        if mem[_13313 + mem[_13313]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_13313 + mem[_13313]]) + 1 < 0 or _13313 + ceil32(return_data.size) + ceil32(32 * mem[_13313 + mem[_13313]]) + 1 > test266151307():
                                            revert with 0, 65
                                        require return_data.size >= mem[_13313] + (32 * mem[_13313 + mem[_13313]]) + 32
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
                                        _10042 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_10042] == bool(mem[_10042])
                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _9126 - ext_call.return_data[0] / 100000
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 160
                                        mem[mem[64] + 164] = 2
                                        idx = 0
                                        s = (6 * ceil32(return_data.size)) + 160
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
                                            args _9126 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _13314 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_13314] <= test266151307()
                                        require _13314 + mem[_13314] + 31 < _13314 + return_data.size
                                        if mem[_13314 + mem[_13314]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_13314 + mem[_13314]]) + 1 < 0 or _13314 + ceil32(return_data.size) + ceil32(32 * mem[_13314 + mem[_13314]]) + 1 > test266151307():
                                            revert with 0, 65
                                        require return_data.size >= mem[_13314] + (32 * mem[_13314 + mem[_13314]]) + 32
                                    if _9126 - ext_call.return_data[0] < _9126 - ext_call.return_data[0] / 100000:
                                        revert with 0, 17
                                    if ext_call.return_data[0] > target[address(arg4)].field_0:
                                        target[address(arg4)].field_0 = 0
                                    else:
                                        if target[address(arg4)].field_0 < ext_call.return_data[0]:
                                            revert with 0, 17
                                        target[address(arg4)].field_0 -= ext_call.return_data[0]
                                    if arg6 <= _9126 - ext_call.return_data[0] - (_9126 - ext_call.return_data[0] / 100000):
                                        if target[address(arg5)].field_0 > !arg6:
                                            revert with 0, 17
                                        target[address(arg5)].field_0 += arg6
                                    else:
                                        if target[address(arg5)].field_0 > !(_9126 - ext_call.return_data[0] - (_9126 - ext_call.return_data[0] / 100000)):
                                            revert with 0, 17
                                        target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9126 - ext_call.return_data[0] - (_9126 - ext_call.return_data[0] / 100000)
                    else:
                        mem[0] = address(arg4)
                        mem[32] = 5
                        if target[address(arg4)].field_0 <= 0:
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
                        if ext_call.return_data[0] >= target[address(arg4)].field_0:
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
                            if arg8:
                                mem[(4 * ceil32(return_data.size)) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 228] = arg3
                                mem[(4 * ceil32(return_data.size)) + 260] = target[address(arg4)].field_0
                                mem[(4 * ceil32(return_data.size)) + 292] = 160
                                mem[(4 * ceil32(return_data.size)) + 388] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 160
                                t = (4 * ceil32(return_data.size)) + 420
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 324] = this.address
                                mem[(4 * ceil32(return_data.size)) + 356] = stor6
                                require ext_code.size(address(arg1))
                                call address(arg1).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, target[address(arg4)].field_0, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 420 len 64]), address(this.address), stor6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (6 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _4795 = mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255 < (4 * ceil32(return_data.size)) + return_data.size + 224
                                _4819 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307():
                                    revert with 0, 65
                                mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                                mem[(6 * ceil32(return_data.size)) + 224] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                                require return_data.size >= _4795 + (32 * _4819) + 32
                                mem[(6 * ceil32(return_data.size)) + 256 len 32 * _4819] = mem[(4 * ceil32(return_data.size)) + _4795 + 256 len 32 * _4819]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg5))
                                staticcall address(arg5).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9103 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _9127 = mem[_9103]
                                _9151 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9151] = 30
                                mem[_9151 + 32] = 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] > _9127:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if _9127 < ext_call.return_data[0]:
                                    revert with 0, 17
                                if _9127 - ext_call.return_data[0] < arg3:
                                    revert with 0, 'output not enough'
                                if not arg7:
                                    if target[address(arg4)].field_0 <= target[address(arg4)].field_0:
                                        if target[address(arg4)].field_0 < target[address(arg4)].field_0:
                                            revert with 0, 17
                                    target[address(arg4)].field_0 = 0
                                    if arg6 <= _9127 - ext_call.return_data[0]:
                                        if target[address(arg5)].field_0 > !arg6:
                                            revert with 0, 17
                                        target[address(arg5)].field_0 += arg6
                                    else:
                                        if target[address(arg5)].field_0 > !(_9127 - ext_call.return_data[0]):
                                            revert with 0, 17
                                        target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9127 - ext_call.return_data[0]
                                else:
                                    mem[(4 * ceil32(return_data.size)) + 160] = address(arg5)
                                    mem[(4 * ceil32(return_data.size)) + 192] = address(arg4)
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = address(arg1)
                                    require ext_code.size(address(arg5))
                                    staticcall address(arg5).0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, address(arg1)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9641 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_9641] >= _9127 - ext_call.return_data[0] / 100000:
                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _9127 - ext_call.return_data[0] / 100000
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 160
                                        mem[mem[64] + 164] = 2
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + 160
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
                                            args _9127 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _13315 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_13315] <= test266151307()
                                        require _13315 + mem[_13315] + 31 < _13315 + return_data.size
                                        if mem[_13315 + mem[_13315]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_13315 + mem[_13315]]) + 1 < 0 or _13315 + ceil32(return_data.size) + ceil32(32 * mem[_13315 + mem[_13315]]) + 1 > test266151307():
                                            revert with 0, 65
                                        require return_data.size >= mem[_13315] + (32 * mem[_13315 + mem[_13315]]) + 32
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
                                        _10046 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_10046] == bool(mem[_10046])
                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _9127 - ext_call.return_data[0] / 100000
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 160
                                        mem[mem[64] + 164] = 2
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + 160
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
                                            args _9127 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _13316 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_13316] <= test266151307()
                                        require _13316 + mem[_13316] + 31 < _13316 + return_data.size
                                        if mem[_13316 + mem[_13316]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_13316 + mem[_13316]]) + 1 < 0 or _13316 + ceil32(return_data.size) + ceil32(32 * mem[_13316 + mem[_13316]]) + 1 > test266151307():
                                            revert with 0, 65
                                        require return_data.size >= mem[_13316] + (32 * mem[_13316 + mem[_13316]]) + 32
                                    if _9127 - ext_call.return_data[0] < _9127 - ext_call.return_data[0] / 100000:
                                        revert with 0, 17
                                    if target[address(arg4)].field_0 <= target[address(arg4)].field_0:
                                        if target[address(arg4)].field_0 < target[address(arg4)].field_0:
                                            revert with 0, 17
                                    target[address(arg4)].field_0 = 0
                                    if arg6 <= _9127 - ext_call.return_data[0] - (_9127 - ext_call.return_data[0] / 100000):
                                        if target[address(arg5)].field_0 > !arg6:
                                            revert with 0, 17
                                        target[address(arg5)].field_0 += arg6
                                    else:
                                        if target[address(arg5)].field_0 > !(_9127 - ext_call.return_data[0] - (_9127 - ext_call.return_data[0] / 100000)):
                                            revert with 0, 17
                                        target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9127 - ext_call.return_data[0] - (_9127 - ext_call.return_data[0] / 100000)
                            else:
                                mem[(4 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 228] = target[address(arg4)].field_0
                                mem[(4 * ceil32(return_data.size)) + 260] = arg3
                                mem[(4 * ceil32(return_data.size)) + 292] = 160
                                mem[(4 * ceil32(return_data.size)) + 388] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 160
                                t = (4 * ceil32(return_data.size)) + 420
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 324] = this.address
                                mem[(4 * ceil32(return_data.size)) + 356] = stor6
                                require ext_code.size(address(arg1))
                                call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args target[address(arg4)].field_0, arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 420 len 64]), address(this.address), stor6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (6 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _4796 = mem[(4 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32
                                require mem[(4 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 + 255 < (4 * ceil32(return_data.size)) + return_data.size + 224
                                _4820 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 + 224]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 + 224] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 + 224]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 + 224]) + 225 > test266151307():
                                    revert with 0, 65
                                mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 + 224]) + 225
                                mem[(6 * ceil32(return_data.size)) + 224] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 + 224]
                                require return_data.size >= _4796 + (32 * _4820) + 32
                                mem[(6 * ceil32(return_data.size)) + 256 len 32 * _4820] = mem[(4 * ceil32(return_data.size)) + _4796 + 256 len 32 * _4820]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg5))
                                staticcall address(arg5).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9104 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _9128 = mem[_9104]
                                _9152 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9152] = 30
                                mem[_9152 + 32] = 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] > _9128:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if _9128 < ext_call.return_data[0]:
                                    revert with 0, 17
                                if _9128 - ext_call.return_data[0] < arg3:
                                    revert with 0, 'output not enough'
                                if not arg7:
                                    if target[address(arg4)].field_0 <= target[address(arg4)].field_0:
                                        if target[address(arg4)].field_0 < target[address(arg4)].field_0:
                                            revert with 0, 17
                                    target[address(arg4)].field_0 = 0
                                    if arg6 <= _9128 - ext_call.return_data[0]:
                                        if target[address(arg5)].field_0 > !arg6:
                                            revert with 0, 17
                                        target[address(arg5)].field_0 += arg6
                                    else:
                                        if target[address(arg5)].field_0 > !(_9128 - ext_call.return_data[0]):
                                            revert with 0, 17
                                        target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9128 - ext_call.return_data[0]
                                else:
                                    mem[(4 * ceil32(return_data.size)) + 160] = address(arg5)
                                    mem[(4 * ceil32(return_data.size)) + 192] = address(arg4)
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = address(arg1)
                                    require ext_code.size(address(arg5))
                                    staticcall address(arg5).0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, address(arg1)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9644 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_9644] >= _9128 - ext_call.return_data[0] / 100000:
                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _9128 - ext_call.return_data[0] / 100000
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 160
                                        mem[mem[64] + 164] = 2
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + 160
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
                                            args _9128 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _13317 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_13317] <= test266151307()
                                        require _13317 + mem[_13317] + 31 < _13317 + return_data.size
                                        if mem[_13317 + mem[_13317]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_13317 + mem[_13317]]) + 1 < 0 or _13317 + ceil32(return_data.size) + ceil32(32 * mem[_13317 + mem[_13317]]) + 1 > test266151307():
                                            revert with 0, 65
                                        require return_data.size >= mem[_13317] + (32 * mem[_13317 + mem[_13317]]) + 32
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
                                        _10050 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_10050] == bool(mem[_10050])
                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _9128 - ext_call.return_data[0] / 100000
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 160
                                        mem[mem[64] + 164] = 2
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + 160
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
                                            args _9128 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _13318 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_13318] <= test266151307()
                                        require _13318 + mem[_13318] + 31 < _13318 + return_data.size
                                        if mem[_13318 + mem[_13318]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_13318 + mem[_13318]]) + 1 < 0 or _13318 + ceil32(return_data.size) + ceil32(32 * mem[_13318 + mem[_13318]]) + 1 > test266151307():
                                            revert with 0, 65
                                        require return_data.size >= mem[_13318] + (32 * mem[_13318 + mem[_13318]]) + 32
                                    if _9128 - ext_call.return_data[0] < _9128 - ext_call.return_data[0] / 100000:
                                        revert with 0, 17
                                    if target[address(arg4)].field_0 <= target[address(arg4)].field_0:
                                        if target[address(arg4)].field_0 < target[address(arg4)].field_0:
                                            revert with 0, 17
                                    target[address(arg4)].field_0 = 0
                                    if arg6 <= _9128 - ext_call.return_data[0] - (_9128 - ext_call.return_data[0] / 100000):
                                        if target[address(arg5)].field_0 > !arg6:
                                            revert with 0, 17
                                        target[address(arg5)].field_0 += arg6
                                    else:
                                        if target[address(arg5)].field_0 > !(_9128 - ext_call.return_data[0] - (_9128 - ext_call.return_data[0] / 100000)):
                                            revert with 0, 17
                                        target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9128 - ext_call.return_data[0] - (_9128 - ext_call.return_data[0] / 100000)
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
                            if arg8:
                                mem[(6 * ceil32(return_data.size)) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[(6 * ceil32(return_data.size)) + 228] = arg3
                                mem[(6 * ceil32(return_data.size)) + 260] = target[address(arg4)].field_0
                                mem[(6 * ceil32(return_data.size)) + 292] = 160
                                mem[(6 * ceil32(return_data.size)) + 388] = 2
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + 160
                                t = (6 * ceil32(return_data.size)) + 420
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(6 * ceil32(return_data.size)) + 324] = this.address
                                mem[(6 * ceil32(return_data.size)) + 356] = stor6
                                require ext_code.size(address(arg1))
                                call address(arg1).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, target[address(arg4)].field_0, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 420 len 64]), address(this.address), stor6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (7 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _4797 = mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255 < (6 * ceil32(return_data.size)) + return_data.size + 224
                                _4821 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                                if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307():
                                    revert with 0, 65
                                mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                                mem[(7 * ceil32(return_data.size)) + 224] = _4821
                                require return_data.size >= _4797 + (32 * _4821) + 32
                                mem[(7 * ceil32(return_data.size)) + 256 len 32 * _4821] = mem[(6 * ceil32(return_data.size)) + _4797 + 256 len 32 * _4821]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg5))
                                staticcall address(arg5).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9105 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _9129 = mem[_9105]
                                _9153 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9153] = 30
                                mem[_9153 + 32] = 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] > _9129:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if _9129 < ext_call.return_data[0]:
                                    revert with 0, 17
                                if _9129 - ext_call.return_data[0] < arg3:
                                    revert with 0, 'output not enough'
                                if not arg7:
                                    if target[address(arg4)].field_0 <= target[address(arg4)].field_0:
                                        if target[address(arg4)].field_0 < target[address(arg4)].field_0:
                                            revert with 0, 17
                                    target[address(arg4)].field_0 = 0
                                    if arg6 <= _9129 - ext_call.return_data[0]:
                                        if target[address(arg5)].field_0 > !arg6:
                                            revert with 0, 17
                                        target[address(arg5)].field_0 += arg6
                                    else:
                                        if target[address(arg5)].field_0 > !(_9129 - ext_call.return_data[0]):
                                            revert with 0, 17
                                        target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9129 - ext_call.return_data[0]
                                else:
                                    mem[(6 * ceil32(return_data.size)) + 160] = address(arg5)
                                    mem[(6 * ceil32(return_data.size)) + 192] = address(arg4)
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = address(arg1)
                                    require ext_code.size(address(arg5))
                                    staticcall address(arg5).0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, address(arg1)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9647 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_9647] >= _9129 - ext_call.return_data[0] / 100000:
                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _9129 - ext_call.return_data[0] / 100000
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 160
                                        mem[mem[64] + 164] = 2
                                        idx = 0
                                        s = (6 * ceil32(return_data.size)) + 160
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
                                            args _9129 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _13319 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_13319] <= test266151307()
                                        require _13319 + mem[_13319] + 31 < _13319 + return_data.size
                                        if mem[_13319 + mem[_13319]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_13319 + mem[_13319]]) + 1 < 0 or _13319 + ceil32(return_data.size) + ceil32(32 * mem[_13319 + mem[_13319]]) + 1 > test266151307():
                                            revert with 0, 65
                                        require return_data.size >= mem[_13319] + (32 * mem[_13319 + mem[_13319]]) + 32
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
                                        _10054 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_10054] == bool(mem[_10054])
                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _9129 - ext_call.return_data[0] / 100000
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 160
                                        mem[mem[64] + 164] = 2
                                        idx = 0
                                        s = (6 * ceil32(return_data.size)) + 160
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
                                            args _9129 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _13320 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_13320] <= test266151307()
                                        require _13320 + mem[_13320] + 31 < _13320 + return_data.size
                                        if mem[_13320 + mem[_13320]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_13320 + mem[_13320]]) + 1 < 0 or _13320 + ceil32(return_data.size) + ceil32(32 * mem[_13320 + mem[_13320]]) + 1 > test266151307():
                                            revert with 0, 65
                                        require return_data.size >= mem[_13320] + (32 * mem[_13320 + mem[_13320]]) + 32
                                    if _9129 - ext_call.return_data[0] < _9129 - ext_call.return_data[0] / 100000:
                                        revert with 0, 17
                                    if target[address(arg4)].field_0 <= target[address(arg4)].field_0:
                                        if target[address(arg4)].field_0 < target[address(arg4)].field_0:
                                            revert with 0, 17
                                    target[address(arg4)].field_0 = 0
                                    if arg6 <= _9129 - ext_call.return_data[0] - (_9129 - ext_call.return_data[0] / 100000):
                                        if target[address(arg5)].field_0 > !arg6:
                                            revert with 0, 17
                                        target[address(arg5)].field_0 += arg6
                                    else:
                                        if target[address(arg5)].field_0 > !(_9129 - ext_call.return_data[0] - (_9129 - ext_call.return_data[0] / 100000)):
                                            revert with 0, 17
                                        target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9129 - ext_call.return_data[0] - (_9129 - ext_call.return_data[0] / 100000)
                            else:
                                mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(6 * ceil32(return_data.size)) + 228] = target[address(arg4)].field_0
                                mem[(6 * ceil32(return_data.size)) + 260] = arg3
                                mem[(6 * ceil32(return_data.size)) + 292] = 160
                                mem[(6 * ceil32(return_data.size)) + 388] = 2
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + 160
                                t = (6 * ceil32(return_data.size)) + 420
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(6 * ceil32(return_data.size)) + 324] = this.address
                                mem[(6 * ceil32(return_data.size)) + 356] = stor6
                                require ext_code.size(address(arg1))
                                call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args target[address(arg4)].field_0, arg3, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 420 len 64]), address(this.address), stor6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (7 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _4798 = mem[(6 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32
                                require mem[(6 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 <= test266151307()
                                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 + 255 < (6 * ceil32(return_data.size)) + return_data.size + 224
                                _4822 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 + 224]
                                if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 + 224] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 + 224]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 + 224]) + 225 > test266151307():
                                    revert with 0, 65
                                mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 + 224]) + 225
                                mem[(7 * ceil32(return_data.size)) + 224] = _4822
                                require return_data.size >= _4798 + (32 * _4822) + 32
                                mem[(7 * ceil32(return_data.size)) + 256 len 32 * _4822] = mem[(6 * ceil32(return_data.size)) + _4798 + 256 len 32 * _4822]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg5))
                                staticcall address(arg5).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9106 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _9130 = mem[_9106]
                                _9154 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9154] = 30
                                mem[_9154 + 32] = 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] > _9130:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if _9130 < ext_call.return_data[0]:
                                    revert with 0, 17
                                if _9130 - ext_call.return_data[0] < arg3:
                                    revert with 0, 'output not enough'
                                if not arg7:
                                    if target[address(arg4)].field_0 <= target[address(arg4)].field_0:
                                        if target[address(arg4)].field_0 < target[address(arg4)].field_0:
                                            revert with 0, 17
                                    target[address(arg4)].field_0 = 0
                                    if arg6 <= _9130 - ext_call.return_data[0]:
                                        if target[address(arg5)].field_0 > !arg6:
                                            revert with 0, 17
                                        target[address(arg5)].field_0 += arg6
                                    else:
                                        if target[address(arg5)].field_0 > !(_9130 - ext_call.return_data[0]):
                                            revert with 0, 17
                                        target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9130 - ext_call.return_data[0]
                                else:
                                    mem[(6 * ceil32(return_data.size)) + 160] = address(arg5)
                                    mem[(6 * ceil32(return_data.size)) + 192] = address(arg4)
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = address(arg1)
                                    require ext_code.size(address(arg5))
                                    staticcall address(arg5).0xdd62ed3e with:
                                            gas gas_remaining wei
                                           args this.address, address(arg1)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9650 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_9650] >= _9130 - ext_call.return_data[0] / 100000:
                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _9130 - ext_call.return_data[0] / 100000
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 160
                                        mem[mem[64] + 164] = 2
                                        idx = 0
                                        s = (6 * ceil32(return_data.size)) + 160
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
                                            args _9130 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _13321 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_13321] <= test266151307()
                                        require _13321 + mem[_13321] + 31 < _13321 + return_data.size
                                        if mem[_13321 + mem[_13321]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_13321 + mem[_13321]]) + 1 < 0 or _13321 + ceil32(return_data.size) + ceil32(32 * mem[_13321 + mem[_13321]]) + 1 > test266151307():
                                            revert with 0, 65
                                        require return_data.size >= mem[_13321] + (32 * mem[_13321 + mem[_13321]]) + 32
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
                                        _10058 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_10058] == bool(mem[_10058])
                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _9130 - ext_call.return_data[0] / 100000
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 160
                                        mem[mem[64] + 164] = 2
                                        idx = 0
                                        s = (6 * ceil32(return_data.size)) + 160
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
                                            args _9130 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _13322 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_13322] <= test266151307()
                                        require _13322 + mem[_13322] + 31 < _13322 + return_data.size
                                        if mem[_13322 + mem[_13322]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_13322 + mem[_13322]]) + 1 < 0 or _13322 + ceil32(return_data.size) + ceil32(32 * mem[_13322 + mem[_13322]]) + 1 > test266151307():
                                            revert with 0, 65
                                        require return_data.size >= mem[_13322] + (32 * mem[_13322 + mem[_13322]]) + 32
                                    if _9130 - ext_call.return_data[0] < _9130 - ext_call.return_data[0] / 100000:
                                        revert with 0, 17
                                    if target[address(arg4)].field_0 <= target[address(arg4)].field_0:
                                        if target[address(arg4)].field_0 < target[address(arg4)].field_0:
                                            revert with 0, 17
                                    target[address(arg4)].field_0 = 0
                                    if arg6 <= _9130 - ext_call.return_data[0] - (_9130 - ext_call.return_data[0] / 100000):
                                        if target[address(arg5)].field_0 > !arg6:
                                            revert with 0, 17
                                        target[address(arg5)].field_0 += arg6
                                    else:
                                        if target[address(arg5)].field_0 > !(_9130 - ext_call.return_data[0] - (_9130 - ext_call.return_data[0] / 100000)):
                                            revert with 0, 17
                                        target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9130 - ext_call.return_data[0] - (_9130 - ext_call.return_data[0] / 100000)
                else:
                    if ext_call.return_data[0] >= arg2:
                        if arg2 <= target[address(arg4)].field_0:
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
                                if arg8:
                                    mem[(4 * ceil32(return_data.size)) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 228] = arg3
                                    mem[(4 * ceil32(return_data.size)) + 260] = arg2
                                    mem[(4 * ceil32(return_data.size)) + 292] = 160
                                    mem[(4 * ceil32(return_data.size)) + 388] = 2
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 160
                                    t = (4 * ceil32(return_data.size)) + 420
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + 324] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 356] = stor6
                                    require ext_code.size(address(arg1))
                                    call address(arg1).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg3, arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 420 len 64]), address(this.address), stor6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (6 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _4775 = mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                                    require mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255 < (4 * ceil32(return_data.size)) + return_data.size + 224
                                    _4799 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307():
                                        revert with 0, 65
                                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                                    mem[(6 * ceil32(return_data.size)) + 224] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                                    require return_data.size >= _4775 + (32 * _4799) + 32
                                    mem[(6 * ceil32(return_data.size)) + 256 len 32 * _4799] = mem[(4 * ceil32(return_data.size)) + _4775 + 256 len 32 * _4799]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg5))
                                    staticcall address(arg5).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9083 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _9107 = mem[_9083]
                                    _9131 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9131] = 30
                                    mem[_9131 + 32] = 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] > _9107:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if _9107 < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if _9107 - ext_call.return_data[0] < arg3:
                                        revert with 0, 'output not enough'
                                    if not arg7:
                                        if arg2 > target[address(arg4)].field_0:
                                            target[address(arg4)].field_0 = 0
                                        else:
                                            if target[address(arg4)].field_0 < arg2:
                                                revert with 0, 17
                                            target[address(arg4)].field_0 -= arg2
                                        if arg6 <= _9107 - ext_call.return_data[0]:
                                            if target[address(arg5)].field_0 > !arg6:
                                                revert with 0, 17
                                            target[address(arg5)].field_0 += arg6
                                        else:
                                            if target[address(arg5)].field_0 > !(_9107 - ext_call.return_data[0]):
                                                revert with 0, 17
                                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9107 - ext_call.return_data[0]
                                    else:
                                        mem[(4 * ceil32(return_data.size)) + 160] = address(arg5)
                                        mem[(4 * ceil32(return_data.size)) + 192] = address(arg4)
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(arg1)
                                        require ext_code.size(address(arg5))
                                        staticcall address(arg5).0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(arg1)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9581 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9581] >= _9107 - ext_call.return_data[0] / 100000:
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _9107 - ext_call.return_data[0] / 100000
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 160
                                            mem[mem[64] + 164] = 2
                                            idx = 0
                                            s = (4 * ceil32(return_data.size)) + 160
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
                                                args _9107 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13275 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_13275] <= test266151307()
                                            require _13275 + mem[_13275] + 31 < _13275 + return_data.size
                                            if mem[_13275 + mem[_13275]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_13275 + mem[_13275]]) + 1 < 0 or _13275 + ceil32(return_data.size) + ceil32(32 * mem[_13275 + mem[_13275]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require return_data.size >= mem[_13275] + (32 * mem[_13275 + mem[_13275]]) + 32
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
                                            _9966 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_9966] == bool(mem[_9966])
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _9107 - ext_call.return_data[0] / 100000
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 160
                                            mem[mem[64] + 164] = 2
                                            idx = 0
                                            s = (4 * ceil32(return_data.size)) + 160
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
                                                args _9107 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13276 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_13276] <= test266151307()
                                            require _13276 + mem[_13276] + 31 < _13276 + return_data.size
                                            if mem[_13276 + mem[_13276]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_13276 + mem[_13276]]) + 1 < 0 or _13276 + ceil32(return_data.size) + ceil32(32 * mem[_13276 + mem[_13276]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require return_data.size >= mem[_13276] + (32 * mem[_13276 + mem[_13276]]) + 32
                                        if _9107 - ext_call.return_data[0] < _9107 - ext_call.return_data[0] / 100000:
                                            revert with 0, 17
                                        if arg2 > target[address(arg4)].field_0:
                                            target[address(arg4)].field_0 = 0
                                        else:
                                            if target[address(arg4)].field_0 < arg2:
                                                revert with 0, 17
                                            target[address(arg4)].field_0 -= arg2
                                        if arg6 <= _9107 - ext_call.return_data[0] - (_9107 - ext_call.return_data[0] / 100000):
                                            if target[address(arg5)].field_0 > !arg6:
                                                revert with 0, 17
                                            target[address(arg5)].field_0 += arg6
                                        else:
                                            if target[address(arg5)].field_0 > !(_9107 - ext_call.return_data[0] - (_9107 - ext_call.return_data[0] / 100000)):
                                                revert with 0, 17
                                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9107 - ext_call.return_data[0] - (_9107 - ext_call.return_data[0] / 100000)
                                else:
                                    mem[(4 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 228] = arg2
                                    mem[(4 * ceil32(return_data.size)) + 260] = arg3
                                    mem[(4 * ceil32(return_data.size)) + 292] = 160
                                    mem[(4 * ceil32(return_data.size)) + 388] = 2
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 160
                                    t = (4 * ceil32(return_data.size)) + 420
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
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
                                    _4776 = mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32
                                    require mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 255 < (4 * ceil32(return_data.size)) + return_data.size + 224
                                    _4800 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 225 > test266151307():
                                        revert with 0, 65
                                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 225
                                    mem[(6 * ceil32(return_data.size)) + 224] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                                    require return_data.size >= _4776 + (32 * _4800) + 32
                                    mem[(6 * ceil32(return_data.size)) + 256 len 32 * _4800] = mem[(4 * ceil32(return_data.size)) + _4776 + 256 len 32 * _4800]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg5))
                                    staticcall address(arg5).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9084 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _9108 = mem[_9084]
                                    _9132 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9132] = 30
                                    mem[_9132 + 32] = 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] > _9108:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if _9108 < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if _9108 - ext_call.return_data[0] < arg3:
                                        revert with 0, 'output not enough'
                                    if not arg7:
                                        if arg2 > target[address(arg4)].field_0:
                                            target[address(arg4)].field_0 = 0
                                        else:
                                            if target[address(arg4)].field_0 < arg2:
                                                revert with 0, 17
                                            target[address(arg4)].field_0 -= arg2
                                        if arg6 <= _9108 - ext_call.return_data[0]:
                                            if target[address(arg5)].field_0 > !arg6:
                                                revert with 0, 17
                                            target[address(arg5)].field_0 += arg6
                                        else:
                                            if target[address(arg5)].field_0 > !(_9108 - ext_call.return_data[0]):
                                                revert with 0, 17
                                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9108 - ext_call.return_data[0]
                                    else:
                                        mem[(4 * ceil32(return_data.size)) + 160] = address(arg5)
                                        mem[(4 * ceil32(return_data.size)) + 192] = address(arg4)
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(arg1)
                                        require ext_code.size(address(arg5))
                                        staticcall address(arg5).0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(arg1)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9584 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9584] >= _9108 - ext_call.return_data[0] / 100000:
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _9108 - ext_call.return_data[0] / 100000
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 160
                                            mem[mem[64] + 164] = 2
                                            idx = 0
                                            s = (4 * ceil32(return_data.size)) + 160
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
                                                args _9108 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13277 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_13277] <= test266151307()
                                            require _13277 + mem[_13277] + 31 < _13277 + return_data.size
                                            if mem[_13277 + mem[_13277]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_13277 + mem[_13277]]) + 1 < 0 or _13277 + ceil32(return_data.size) + ceil32(32 * mem[_13277 + mem[_13277]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require return_data.size >= mem[_13277] + (32 * mem[_13277 + mem[_13277]]) + 32
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
                                            _9970 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_9970] == bool(mem[_9970])
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _9108 - ext_call.return_data[0] / 100000
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 160
                                            mem[mem[64] + 164] = 2
                                            idx = 0
                                            s = (4 * ceil32(return_data.size)) + 160
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
                                                args _9108 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13278 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_13278] <= test266151307()
                                            require _13278 + mem[_13278] + 31 < _13278 + return_data.size
                                            if mem[_13278 + mem[_13278]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_13278 + mem[_13278]]) + 1 < 0 or _13278 + ceil32(return_data.size) + ceil32(32 * mem[_13278 + mem[_13278]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require return_data.size >= mem[_13278] + (32 * mem[_13278 + mem[_13278]]) + 32
                                        if _9108 - ext_call.return_data[0] < _9108 - ext_call.return_data[0] / 100000:
                                            revert with 0, 17
                                        if arg2 > target[address(arg4)].field_0:
                                            target[address(arg4)].field_0 = 0
                                        else:
                                            if target[address(arg4)].field_0 < arg2:
                                                revert with 0, 17
                                            target[address(arg4)].field_0 -= arg2
                                        if arg6 <= _9108 - ext_call.return_data[0] - (_9108 - ext_call.return_data[0] / 100000):
                                            if target[address(arg5)].field_0 > !arg6:
                                                revert with 0, 17
                                            target[address(arg5)].field_0 += arg6
                                        else:
                                            if target[address(arg5)].field_0 > !(_9108 - ext_call.return_data[0] - (_9108 - ext_call.return_data[0] / 100000)):
                                                revert with 0, 17
                                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9108 - ext_call.return_data[0] - (_9108 - ext_call.return_data[0] / 100000)
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
                                if arg8:
                                    mem[(6 * ceil32(return_data.size)) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[(6 * ceil32(return_data.size)) + 228] = arg3
                                    mem[(6 * ceil32(return_data.size)) + 260] = arg2
                                    mem[(6 * ceil32(return_data.size)) + 292] = 160
                                    mem[(6 * ceil32(return_data.size)) + 388] = 2
                                    idx = 0
                                    s = (6 * ceil32(return_data.size)) + 160
                                    t = (6 * ceil32(return_data.size)) + 420
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(6 * ceil32(return_data.size)) + 324] = this.address
                                    mem[(6 * ceil32(return_data.size)) + 356] = stor6
                                    require ext_code.size(address(arg1))
                                    call address(arg1).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg3, arg2, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 420 len 64]), address(this.address), stor6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (7 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _4777 = mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                                    require mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255 < (6 * ceil32(return_data.size)) + return_data.size + 224
                                    _4801 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                                    if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307():
                                        revert with 0, 65
                                    mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                                    mem[(7 * ceil32(return_data.size)) + 224] = _4801
                                    require return_data.size >= _4777 + (32 * _4801) + 32
                                    mem[(7 * ceil32(return_data.size)) + 256 len 32 * _4801] = mem[(6 * ceil32(return_data.size)) + _4777 + 256 len 32 * _4801]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg5))
                                    staticcall address(arg5).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9085 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _9109 = mem[_9085]
                                    _9133 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9133] = 30
                                    mem[_9133 + 32] = 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] > _9109:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if _9109 < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if _9109 - ext_call.return_data[0] < arg3:
                                        revert with 0, 'output not enough'
                                    if not arg7:
                                        if arg2 > target[address(arg4)].field_0:
                                            target[address(arg4)].field_0 = 0
                                        else:
                                            if target[address(arg4)].field_0 < arg2:
                                                revert with 0, 17
                                            target[address(arg4)].field_0 -= arg2
                                        if arg6 <= _9109 - ext_call.return_data[0]:
                                            if target[address(arg5)].field_0 > !arg6:
                                                revert with 0, 17
                                            target[address(arg5)].field_0 += arg6
                                        else:
                                            if target[address(arg5)].field_0 > !(_9109 - ext_call.return_data[0]):
                                                revert with 0, 17
                                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9109 - ext_call.return_data[0]
                                    else:
                                        mem[(6 * ceil32(return_data.size)) + 160] = address(arg5)
                                        mem[(6 * ceil32(return_data.size)) + 192] = address(arg4)
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(arg1)
                                        require ext_code.size(address(arg5))
                                        staticcall address(arg5).0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(arg1)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9587 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9587] >= _9109 - ext_call.return_data[0] / 100000:
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _9109 - ext_call.return_data[0] / 100000
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 160
                                            mem[mem[64] + 164] = 2
                                            idx = 0
                                            s = (6 * ceil32(return_data.size)) + 160
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
                                                args _9109 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13279 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_13279] <= test266151307()
                                            require _13279 + mem[_13279] + 31 < _13279 + return_data.size
                                            if mem[_13279 + mem[_13279]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_13279 + mem[_13279]]) + 1 < 0 or _13279 + ceil32(return_data.size) + ceil32(32 * mem[_13279 + mem[_13279]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require return_data.size >= mem[_13279] + (32 * mem[_13279 + mem[_13279]]) + 32
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
                                            _9974 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_9974] == bool(mem[_9974])
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _9109 - ext_call.return_data[0] / 100000
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 160
                                            mem[mem[64] + 164] = 2
                                            idx = 0
                                            s = (6 * ceil32(return_data.size)) + 160
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
                                                args _9109 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13280 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_13280] <= test266151307()
                                            require _13280 + mem[_13280] + 31 < _13280 + return_data.size
                                            if mem[_13280 + mem[_13280]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_13280 + mem[_13280]]) + 1 < 0 or _13280 + ceil32(return_data.size) + ceil32(32 * mem[_13280 + mem[_13280]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require return_data.size >= mem[_13280] + (32 * mem[_13280 + mem[_13280]]) + 32
                                        if _9109 - ext_call.return_data[0] < _9109 - ext_call.return_data[0] / 100000:
                                            revert with 0, 17
                                        if arg2 > target[address(arg4)].field_0:
                                            target[address(arg4)].field_0 = 0
                                        else:
                                            if target[address(arg4)].field_0 < arg2:
                                                revert with 0, 17
                                            target[address(arg4)].field_0 -= arg2
                                        if arg6 <= _9109 - ext_call.return_data[0] - (_9109 - ext_call.return_data[0] / 100000):
                                            if target[address(arg5)].field_0 > !arg6:
                                                revert with 0, 17
                                            target[address(arg5)].field_0 += arg6
                                        else:
                                            if target[address(arg5)].field_0 > !(_9109 - ext_call.return_data[0] - (_9109 - ext_call.return_data[0] / 100000)):
                                                revert with 0, 17
                                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9109 - ext_call.return_data[0] - (_9109 - ext_call.return_data[0] / 100000)
                                else:
                                    mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(6 * ceil32(return_data.size)) + 228] = arg2
                                    mem[(6 * ceil32(return_data.size)) + 260] = arg3
                                    mem[(6 * ceil32(return_data.size)) + 292] = 160
                                    mem[(6 * ceil32(return_data.size)) + 388] = 2
                                    idx = 0
                                    s = (6 * ceil32(return_data.size)) + 160
                                    t = (6 * ceil32(return_data.size)) + 420
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
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
                                    _4778 = mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32
                                    require mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 255 < (6 * ceil32(return_data.size)) + return_data.size + 224
                                    _4802 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                                    if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 225 > test266151307():
                                        revert with 0, 65
                                    mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 225
                                    mem[(7 * ceil32(return_data.size)) + 224] = _4802
                                    require return_data.size >= _4778 + (32 * _4802) + 32
                                    mem[(7 * ceil32(return_data.size)) + 256 len 32 * _4802] = mem[(6 * ceil32(return_data.size)) + _4778 + 256 len 32 * _4802]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg5))
                                    staticcall address(arg5).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9086 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _9110 = mem[_9086]
                                    _9134 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9134] = 30
                                    mem[_9134 + 32] = 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] > _9110:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if _9110 < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if _9110 - ext_call.return_data[0] < arg3:
                                        revert with 0, 'output not enough'
                                    if not arg7:
                                        if arg2 > target[address(arg4)].field_0:
                                            target[address(arg4)].field_0 = 0
                                        else:
                                            if target[address(arg4)].field_0 < arg2:
                                                revert with 0, 17
                                            target[address(arg4)].field_0 -= arg2
                                        if arg6 <= _9110 - ext_call.return_data[0]:
                                            if target[address(arg5)].field_0 > !arg6:
                                                revert with 0, 17
                                            target[address(arg5)].field_0 += arg6
                                        else:
                                            if target[address(arg5)].field_0 > !(_9110 - ext_call.return_data[0]):
                                                revert with 0, 17
                                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9110 - ext_call.return_data[0]
                                    else:
                                        mem[(6 * ceil32(return_data.size)) + 160] = address(arg5)
                                        mem[(6 * ceil32(return_data.size)) + 192] = address(arg4)
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(arg1)
                                        require ext_code.size(address(arg5))
                                        staticcall address(arg5).0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(arg1)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9590 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9590] >= _9110 - ext_call.return_data[0] / 100000:
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _9110 - ext_call.return_data[0] / 100000
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 160
                                            mem[mem[64] + 164] = 2
                                            idx = 0
                                            s = (6 * ceil32(return_data.size)) + 160
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
                                                args _9110 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13281 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_13281] <= test266151307()
                                            require _13281 + mem[_13281] + 31 < _13281 + return_data.size
                                            if mem[_13281 + mem[_13281]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_13281 + mem[_13281]]) + 1 < 0 or _13281 + ceil32(return_data.size) + ceil32(32 * mem[_13281 + mem[_13281]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require return_data.size >= mem[_13281] + (32 * mem[_13281 + mem[_13281]]) + 32
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
                                            _9978 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_9978] == bool(mem[_9978])
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _9110 - ext_call.return_data[0] / 100000
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 160
                                            mem[mem[64] + 164] = 2
                                            idx = 0
                                            s = (6 * ceil32(return_data.size)) + 160
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
                                                args _9110 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13282 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_13282] <= test266151307()
                                            require _13282 + mem[_13282] + 31 < _13282 + return_data.size
                                            if mem[_13282 + mem[_13282]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_13282 + mem[_13282]]) + 1 < 0 or _13282 + ceil32(return_data.size) + ceil32(32 * mem[_13282 + mem[_13282]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require return_data.size >= mem[_13282] + (32 * mem[_13282 + mem[_13282]]) + 32
                                        if _9110 - ext_call.return_data[0] < _9110 - ext_call.return_data[0] / 100000:
                                            revert with 0, 17
                                        if arg2 > target[address(arg4)].field_0:
                                            target[address(arg4)].field_0 = 0
                                        else:
                                            if target[address(arg4)].field_0 < arg2:
                                                revert with 0, 17
                                            target[address(arg4)].field_0 -= arg2
                                        if arg6 <= _9110 - ext_call.return_data[0] - (_9110 - ext_call.return_data[0] / 100000):
                                            if target[address(arg5)].field_0 > !arg6:
                                                revert with 0, 17
                                            target[address(arg5)].field_0 += arg6
                                        else:
                                            if target[address(arg5)].field_0 > !(_9110 - ext_call.return_data[0] - (_9110 - ext_call.return_data[0] / 100000)):
                                                revert with 0, 17
                                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9110 - ext_call.return_data[0] - (_9110 - ext_call.return_data[0] / 100000)
                        else:
                            mem[0] = address(arg4)
                            mem[32] = 5
                            if target[address(arg4)].field_0 <= 0:
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
                            if ext_call.return_data[0] >= target[address(arg4)].field_0:
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
                                if arg8:
                                    mem[(4 * ceil32(return_data.size)) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 228] = arg3
                                    mem[(4 * ceil32(return_data.size)) + 260] = target[address(arg4)].field_0
                                    mem[(4 * ceil32(return_data.size)) + 292] = 160
                                    mem[(4 * ceil32(return_data.size)) + 388] = 2
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 160
                                    t = (4 * ceil32(return_data.size)) + 420
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + 324] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 356] = stor6
                                    require ext_code.size(address(arg1))
                                    call address(arg1).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg3, target[address(arg4)].field_0, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 420 len 64]), address(this.address), stor6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (6 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _4779 = mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                                    require mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255 < (4 * ceil32(return_data.size)) + return_data.size + 224
                                    _4803 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307():
                                        revert with 0, 65
                                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                                    mem[(6 * ceil32(return_data.size)) + 224] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                                    require return_data.size >= _4779 + (32 * _4803) + 32
                                    mem[(6 * ceil32(return_data.size)) + 256 len 32 * _4803] = mem[(4 * ceil32(return_data.size)) + _4779 + 256 len 32 * _4803]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg5))
                                    staticcall address(arg5).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9087 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _9111 = mem[_9087]
                                    _9135 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9135] = 30
                                    mem[_9135 + 32] = 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] > _9111:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if _9111 < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if _9111 - ext_call.return_data[0] < arg3:
                                        revert with 0, 'output not enough'
                                    if not arg7:
                                        if target[address(arg4)].field_0 <= target[address(arg4)].field_0:
                                            if target[address(arg4)].field_0 < target[address(arg4)].field_0:
                                                revert with 0, 17
                                        target[address(arg4)].field_0 = 0
                                        if arg6 <= _9111 - ext_call.return_data[0]:
                                            if target[address(arg5)].field_0 > !arg6:
                                                revert with 0, 17
                                            target[address(arg5)].field_0 += arg6
                                        else:
                                            if target[address(arg5)].field_0 > !(_9111 - ext_call.return_data[0]):
                                                revert with 0, 17
                                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9111 - ext_call.return_data[0]
                                    else:
                                        mem[(4 * ceil32(return_data.size)) + 160] = address(arg5)
                                        mem[(4 * ceil32(return_data.size)) + 192] = address(arg4)
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(arg1)
                                        require ext_code.size(address(arg5))
                                        staticcall address(arg5).0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(arg1)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9593 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9593] >= _9111 - ext_call.return_data[0] / 100000:
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _9111 - ext_call.return_data[0] / 100000
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 160
                                            mem[mem[64] + 164] = 2
                                            idx = 0
                                            s = (4 * ceil32(return_data.size)) + 160
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
                                                args _9111 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13283 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_13283] <= test266151307()
                                            require _13283 + mem[_13283] + 31 < _13283 + return_data.size
                                            if mem[_13283 + mem[_13283]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_13283 + mem[_13283]]) + 1 < 0 or _13283 + ceil32(return_data.size) + ceil32(32 * mem[_13283 + mem[_13283]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require return_data.size >= mem[_13283] + (32 * mem[_13283 + mem[_13283]]) + 32
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
                                            _9982 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_9982] == bool(mem[_9982])
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _9111 - ext_call.return_data[0] / 100000
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 160
                                            mem[mem[64] + 164] = 2
                                            idx = 0
                                            s = (4 * ceil32(return_data.size)) + 160
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
                                                args _9111 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13284 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_13284] <= test266151307()
                                            require _13284 + mem[_13284] + 31 < _13284 + return_data.size
                                            if mem[_13284 + mem[_13284]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_13284 + mem[_13284]]) + 1 < 0 or _13284 + ceil32(return_data.size) + ceil32(32 * mem[_13284 + mem[_13284]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require return_data.size >= mem[_13284] + (32 * mem[_13284 + mem[_13284]]) + 32
                                        if _9111 - ext_call.return_data[0] < _9111 - ext_call.return_data[0] / 100000:
                                            revert with 0, 17
                                        if target[address(arg4)].field_0 <= target[address(arg4)].field_0:
                                            if target[address(arg4)].field_0 < target[address(arg4)].field_0:
                                                revert with 0, 17
                                        target[address(arg4)].field_0 = 0
                                        if arg6 <= _9111 - ext_call.return_data[0] - (_9111 - ext_call.return_data[0] / 100000):
                                            if target[address(arg5)].field_0 > !arg6:
                                                revert with 0, 17
                                            target[address(arg5)].field_0 += arg6
                                        else:
                                            if target[address(arg5)].field_0 > !(_9111 - ext_call.return_data[0] - (_9111 - ext_call.return_data[0] / 100000)):
                                                revert with 0, 17
                                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9111 - ext_call.return_data[0] - (_9111 - ext_call.return_data[0] / 100000)
                                else:
                                    mem[(4 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 228] = target[address(arg4)].field_0
                                    mem[(4 * ceil32(return_data.size)) + 260] = arg3
                                    mem[(4 * ceil32(return_data.size)) + 292] = 160
                                    mem[(4 * ceil32(return_data.size)) + 388] = 2
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 160
                                    t = (4 * ceil32(return_data.size)) + 420
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + 324] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 356] = stor6
                                    require ext_code.size(address(arg1))
                                    call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args target[address(arg4)].field_0, arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 420 len 64]), address(this.address), stor6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (6 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _4780 = mem[(4 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32
                                    require mem[(4 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 <= test266151307()
                                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 + 255 < (4 * ceil32(return_data.size)) + return_data.size + 224
                                    _4804 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 + 224]
                                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 + 224] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 + 224]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 + 224]) + 225 > test266151307():
                                        revert with 0, 65
                                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 + 224]) + 225
                                    mem[(6 * ceil32(return_data.size)) + 224] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 + 224]
                                    require return_data.size >= _4780 + (32 * _4804) + 32
                                    mem[(6 * ceil32(return_data.size)) + 256 len 32 * _4804] = mem[(4 * ceil32(return_data.size)) + _4780 + 256 len 32 * _4804]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg5))
                                    staticcall address(arg5).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9088 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _9112 = mem[_9088]
                                    _9136 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9136] = 30
                                    mem[_9136 + 32] = 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] > _9112:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if _9112 < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if _9112 - ext_call.return_data[0] < arg3:
                                        revert with 0, 'output not enough'
                                    if not arg7:
                                        if target[address(arg4)].field_0 <= target[address(arg4)].field_0:
                                            if target[address(arg4)].field_0 < target[address(arg4)].field_0:
                                                revert with 0, 17
                                        target[address(arg4)].field_0 = 0
                                        if arg6 <= _9112 - ext_call.return_data[0]:
                                            if target[address(arg5)].field_0 > !arg6:
                                                revert with 0, 17
                                            target[address(arg5)].field_0 += arg6
                                        else:
                                            if target[address(arg5)].field_0 > !(_9112 - ext_call.return_data[0]):
                                                revert with 0, 17
                                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9112 - ext_call.return_data[0]
                                    else:
                                        mem[(4 * ceil32(return_data.size)) + 160] = address(arg5)
                                        mem[(4 * ceil32(return_data.size)) + 192] = address(arg4)
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(arg1)
                                        require ext_code.size(address(arg5))
                                        staticcall address(arg5).0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(arg1)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9596 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9596] >= _9112 - ext_call.return_data[0] / 100000:
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _9112 - ext_call.return_data[0] / 100000
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 160
                                            mem[mem[64] + 164] = 2
                                            idx = 0
                                            s = (4 * ceil32(return_data.size)) + 160
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
                                                args _9112 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13285 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_13285] <= test266151307()
                                            require _13285 + mem[_13285] + 31 < _13285 + return_data.size
                                            if mem[_13285 + mem[_13285]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_13285 + mem[_13285]]) + 1 < 0 or _13285 + ceil32(return_data.size) + ceil32(32 * mem[_13285 + mem[_13285]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require return_data.size >= mem[_13285] + (32 * mem[_13285 + mem[_13285]]) + 32
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
                                            _9986 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_9986] == bool(mem[_9986])
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _9112 - ext_call.return_data[0] / 100000
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 160
                                            mem[mem[64] + 164] = 2
                                            idx = 0
                                            s = (4 * ceil32(return_data.size)) + 160
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
                                                args _9112 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13286 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_13286] <= test266151307()
                                            require _13286 + mem[_13286] + 31 < _13286 + return_data.size
                                            if mem[_13286 + mem[_13286]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_13286 + mem[_13286]]) + 1 < 0 or _13286 + ceil32(return_data.size) + ceil32(32 * mem[_13286 + mem[_13286]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require return_data.size >= mem[_13286] + (32 * mem[_13286 + mem[_13286]]) + 32
                                        if _9112 - ext_call.return_data[0] < _9112 - ext_call.return_data[0] / 100000:
                                            revert with 0, 17
                                        if target[address(arg4)].field_0 <= target[address(arg4)].field_0:
                                            if target[address(arg4)].field_0 < target[address(arg4)].field_0:
                                                revert with 0, 17
                                        target[address(arg4)].field_0 = 0
                                        if arg6 <= _9112 - ext_call.return_data[0] - (_9112 - ext_call.return_data[0] / 100000):
                                            if target[address(arg5)].field_0 > !arg6:
                                                revert with 0, 17
                                            target[address(arg5)].field_0 += arg6
                                        else:
                                            if target[address(arg5)].field_0 > !(_9112 - ext_call.return_data[0] - (_9112 - ext_call.return_data[0] / 100000)):
                                                revert with 0, 17
                                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9112 - ext_call.return_data[0] - (_9112 - ext_call.return_data[0] / 100000)
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
                                if arg8:
                                    mem[(6 * ceil32(return_data.size)) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[(6 * ceil32(return_data.size)) + 228] = arg3
                                    mem[(6 * ceil32(return_data.size)) + 260] = target[address(arg4)].field_0
                                    mem[(6 * ceil32(return_data.size)) + 292] = 160
                                    mem[(6 * ceil32(return_data.size)) + 388] = 2
                                    idx = 0
                                    s = (6 * ceil32(return_data.size)) + 160
                                    t = (6 * ceil32(return_data.size)) + 420
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(6 * ceil32(return_data.size)) + 324] = this.address
                                    mem[(6 * ceil32(return_data.size)) + 356] = stor6
                                    require ext_code.size(address(arg1))
                                    call address(arg1).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg3, target[address(arg4)].field_0, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 420 len 64]), address(this.address), stor6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (7 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _4781 = mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                                    require mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255 < (6 * ceil32(return_data.size)) + return_data.size + 224
                                    _4805 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                                    if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307():
                                        revert with 0, 65
                                    mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                                    mem[(7 * ceil32(return_data.size)) + 224] = _4805
                                    require return_data.size >= _4781 + (32 * _4805) + 32
                                    mem[(7 * ceil32(return_data.size)) + 256 len 32 * _4805] = mem[(6 * ceil32(return_data.size)) + _4781 + 256 len 32 * _4805]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg5))
                                    staticcall address(arg5).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9089 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _9113 = mem[_9089]
                                    _9137 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9137] = 30
                                    mem[_9137 + 32] = 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] > _9113:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if _9113 < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if _9113 - ext_call.return_data[0] < arg3:
                                        revert with 0, 'output not enough'
                                    if not arg7:
                                        if target[address(arg4)].field_0 <= target[address(arg4)].field_0:
                                            if target[address(arg4)].field_0 < target[address(arg4)].field_0:
                                                revert with 0, 17
                                        target[address(arg4)].field_0 = 0
                                        if arg6 <= _9113 - ext_call.return_data[0]:
                                            if target[address(arg5)].field_0 > !arg6:
                                                revert with 0, 17
                                            target[address(arg5)].field_0 += arg6
                                        else:
                                            if target[address(arg5)].field_0 > !(_9113 - ext_call.return_data[0]):
                                                revert with 0, 17
                                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9113 - ext_call.return_data[0]
                                    else:
                                        mem[(6 * ceil32(return_data.size)) + 160] = address(arg5)
                                        mem[(6 * ceil32(return_data.size)) + 192] = address(arg4)
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(arg1)
                                        require ext_code.size(address(arg5))
                                        staticcall address(arg5).0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(arg1)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9599 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9599] >= _9113 - ext_call.return_data[0] / 100000:
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _9113 - ext_call.return_data[0] / 100000
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 160
                                            mem[mem[64] + 164] = 2
                                            idx = 0
                                            s = (6 * ceil32(return_data.size)) + 160
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
                                                args _9113 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13287 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_13287] <= test266151307()
                                            require _13287 + mem[_13287] + 31 < _13287 + return_data.size
                                            if mem[_13287 + mem[_13287]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_13287 + mem[_13287]]) + 1 < 0 or _13287 + ceil32(return_data.size) + ceil32(32 * mem[_13287 + mem[_13287]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require return_data.size >= mem[_13287] + (32 * mem[_13287 + mem[_13287]]) + 32
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
                                            _9990 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_9990] == bool(mem[_9990])
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _9113 - ext_call.return_data[0] / 100000
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 160
                                            mem[mem[64] + 164] = 2
                                            idx = 0
                                            s = (6 * ceil32(return_data.size)) + 160
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
                                                args _9113 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13288 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_13288] <= test266151307()
                                            require _13288 + mem[_13288] + 31 < _13288 + return_data.size
                                            if mem[_13288 + mem[_13288]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_13288 + mem[_13288]]) + 1 < 0 or _13288 + ceil32(return_data.size) + ceil32(32 * mem[_13288 + mem[_13288]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require return_data.size >= mem[_13288] + (32 * mem[_13288 + mem[_13288]]) + 32
                                        if _9113 - ext_call.return_data[0] < _9113 - ext_call.return_data[0] / 100000:
                                            revert with 0, 17
                                        if target[address(arg4)].field_0 <= target[address(arg4)].field_0:
                                            if target[address(arg4)].field_0 < target[address(arg4)].field_0:
                                                revert with 0, 17
                                        target[address(arg4)].field_0 = 0
                                        if arg6 <= _9113 - ext_call.return_data[0] - (_9113 - ext_call.return_data[0] / 100000):
                                            if target[address(arg5)].field_0 > !arg6:
                                                revert with 0, 17
                                            target[address(arg5)].field_0 += arg6
                                        else:
                                            if target[address(arg5)].field_0 > !(_9113 - ext_call.return_data[0] - (_9113 - ext_call.return_data[0] / 100000)):
                                                revert with 0, 17
                                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9113 - ext_call.return_data[0] - (_9113 - ext_call.return_data[0] / 100000)
                                else:
                                    mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(6 * ceil32(return_data.size)) + 228] = target[address(arg4)].field_0
                                    mem[(6 * ceil32(return_data.size)) + 260] = arg3
                                    mem[(6 * ceil32(return_data.size)) + 292] = 160
                                    mem[(6 * ceil32(return_data.size)) + 388] = 2
                                    idx = 0
                                    s = (6 * ceil32(return_data.size)) + 160
                                    t = (6 * ceil32(return_data.size)) + 420
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(6 * ceil32(return_data.size)) + 324] = this.address
                                    mem[(6 * ceil32(return_data.size)) + 356] = stor6
                                    require ext_code.size(address(arg1))
                                    call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args target[address(arg4)].field_0, arg3, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 420 len 64]), address(this.address), stor6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (7 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _4782 = mem[(6 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32
                                    require mem[(6 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 <= test266151307()
                                    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 + 255 < (6 * ceil32(return_data.size)) + return_data.size + 224
                                    _4806 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 + 224]
                                    if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 + 224] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 + 224]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 + 224]) + 225 > test266151307():
                                        revert with 0, 65
                                    mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 + 224]) + 225
                                    mem[(7 * ceil32(return_data.size)) + 224] = _4806
                                    require return_data.size >= _4782 + (32 * _4806) + 32
                                    mem[(7 * ceil32(return_data.size)) + 256 len 32 * _4806] = mem[(6 * ceil32(return_data.size)) + _4782 + 256 len 32 * _4806]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg5))
                                    staticcall address(arg5).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9090 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _9114 = mem[_9090]
                                    _9138 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9138] = 30
                                    mem[_9138 + 32] = 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] > _9114:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if _9114 < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if _9114 - ext_call.return_data[0] < arg3:
                                        revert with 0, 'output not enough'
                                    if not arg7:
                                        if target[address(arg4)].field_0 <= target[address(arg4)].field_0:
                                            if target[address(arg4)].field_0 < target[address(arg4)].field_0:
                                                revert with 0, 17
                                        target[address(arg4)].field_0 = 0
                                        if arg6 <= _9114 - ext_call.return_data[0]:
                                            if target[address(arg5)].field_0 > !arg6:
                                                revert with 0, 17
                                            target[address(arg5)].field_0 += arg6
                                        else:
                                            if target[address(arg5)].field_0 > !(_9114 - ext_call.return_data[0]):
                                                revert with 0, 17
                                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9114 - ext_call.return_data[0]
                                    else:
                                        mem[(6 * ceil32(return_data.size)) + 160] = address(arg5)
                                        mem[(6 * ceil32(return_data.size)) + 192] = address(arg4)
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(arg1)
                                        require ext_code.size(address(arg5))
                                        staticcall address(arg5).0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(arg1)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9602 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9602] >= _9114 - ext_call.return_data[0] / 100000:
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _9114 - ext_call.return_data[0] / 100000
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 160
                                            mem[mem[64] + 164] = 2
                                            idx = 0
                                            s = (6 * ceil32(return_data.size)) + 160
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
                                                args _9114 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13289 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_13289] <= test266151307()
                                            require _13289 + mem[_13289] + 31 < _13289 + return_data.size
                                            if mem[_13289 + mem[_13289]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_13289 + mem[_13289]]) + 1 < 0 or _13289 + ceil32(return_data.size) + ceil32(32 * mem[_13289 + mem[_13289]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require return_data.size >= mem[_13289] + (32 * mem[_13289 + mem[_13289]]) + 32
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
                                            _9994 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_9994] == bool(mem[_9994])
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _9114 - ext_call.return_data[0] / 100000
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 160
                                            mem[mem[64] + 164] = 2
                                            idx = 0
                                            s = (6 * ceil32(return_data.size)) + 160
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
                                                args _9114 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13290 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_13290] <= test266151307()
                                            require _13290 + mem[_13290] + 31 < _13290 + return_data.size
                                            if mem[_13290 + mem[_13290]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_13290 + mem[_13290]]) + 1 < 0 or _13290 + ceil32(return_data.size) + ceil32(32 * mem[_13290 + mem[_13290]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require return_data.size >= mem[_13290] + (32 * mem[_13290 + mem[_13290]]) + 32
                                        if _9114 - ext_call.return_data[0] < _9114 - ext_call.return_data[0] / 100000:
                                            revert with 0, 17
                                        if target[address(arg4)].field_0 <= target[address(arg4)].field_0:
                                            if target[address(arg4)].field_0 < target[address(arg4)].field_0:
                                                revert with 0, 17
                                        target[address(arg4)].field_0 = 0
                                        if arg6 <= _9114 - ext_call.return_data[0] - (_9114 - ext_call.return_data[0] / 100000):
                                            if target[address(arg5)].field_0 > !arg6:
                                                revert with 0, 17
                                            target[address(arg5)].field_0 += arg6
                                        else:
                                            if target[address(arg5)].field_0 > !(_9114 - ext_call.return_data[0] - (_9114 - ext_call.return_data[0] / 100000)):
                                                revert with 0, 17
                                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9114 - ext_call.return_data[0] - (_9114 - ext_call.return_data[0] / 100000)
                    else:
                        if ext_call.return_data[0] <= target[address(arg4)].field_0:
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
                                if arg8:
                                    mem[(4 * ceil32(return_data.size)) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 228] = arg3
                                    mem[(4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                                    mem[(4 * ceil32(return_data.size)) + 292] = 160
                                    mem[(4 * ceil32(return_data.size)) + 388] = 2
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 160
                                    t = (4 * ceil32(return_data.size)) + 420
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + 324] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 356] = stor6
                                    require ext_code.size(address(arg1))
                                    call address(arg1).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg3, ext_call.return_data[0], Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 420 len 64]), address(this.address), stor6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (6 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _4783 = mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                                    require mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255 < (4 * ceil32(return_data.size)) + return_data.size + 224
                                    _4807 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307():
                                        revert with 0, 65
                                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                                    mem[(6 * ceil32(return_data.size)) + 224] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                                    require return_data.size >= _4783 + (32 * _4807) + 32
                                    mem[(6 * ceil32(return_data.size)) + 256 len 32 * _4807] = mem[(4 * ceil32(return_data.size)) + _4783 + 256 len 32 * _4807]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg5))
                                    staticcall address(arg5).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9091 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _9115 = mem[_9091]
                                    _9139 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9139] = 30
                                    mem[_9139 + 32] = 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] > _9115:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if _9115 < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if _9115 - ext_call.return_data[0] < arg3:
                                        revert with 0, 'output not enough'
                                    if not arg7:
                                        if ext_call.return_data[0] > target[address(arg4)].field_0:
                                            target[address(arg4)].field_0 = 0
                                        else:
                                            if target[address(arg4)].field_0 < ext_call.return_data[0]:
                                                revert with 0, 17
                                            target[address(arg4)].field_0 -= ext_call.return_data[0]
                                        if arg6 <= _9115 - ext_call.return_data[0]:
                                            if target[address(arg5)].field_0 > !arg6:
                                                revert with 0, 17
                                            target[address(arg5)].field_0 += arg6
                                        else:
                                            if target[address(arg5)].field_0 > !(_9115 - ext_call.return_data[0]):
                                                revert with 0, 17
                                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9115 - ext_call.return_data[0]
                                    else:
                                        mem[(4 * ceil32(return_data.size)) + 160] = address(arg5)
                                        mem[(4 * ceil32(return_data.size)) + 192] = address(arg4)
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(arg1)
                                        require ext_code.size(address(arg5))
                                        staticcall address(arg5).0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(arg1)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9605 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9605] >= _9115 - ext_call.return_data[0] / 100000:
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _9115 - ext_call.return_data[0] / 100000
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 160
                                            mem[mem[64] + 164] = 2
                                            idx = 0
                                            s = (4 * ceil32(return_data.size)) + 160
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
                                                args _9115 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13291 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_13291] <= test266151307()
                                            require _13291 + mem[_13291] + 31 < _13291 + return_data.size
                                            if mem[_13291 + mem[_13291]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_13291 + mem[_13291]]) + 1 < 0 or _13291 + ceil32(return_data.size) + ceil32(32 * mem[_13291 + mem[_13291]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require return_data.size >= mem[_13291] + (32 * mem[_13291 + mem[_13291]]) + 32
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
                                            _9998 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_9998] == bool(mem[_9998])
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _9115 - ext_call.return_data[0] / 100000
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 160
                                            mem[mem[64] + 164] = 2
                                            idx = 0
                                            s = (4 * ceil32(return_data.size)) + 160
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
                                                args _9115 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13292 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_13292] <= test266151307()
                                            require _13292 + mem[_13292] + 31 < _13292 + return_data.size
                                            if mem[_13292 + mem[_13292]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_13292 + mem[_13292]]) + 1 < 0 or _13292 + ceil32(return_data.size) + ceil32(32 * mem[_13292 + mem[_13292]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require return_data.size >= mem[_13292] + (32 * mem[_13292 + mem[_13292]]) + 32
                                        if _9115 - ext_call.return_data[0] < _9115 - ext_call.return_data[0] / 100000:
                                            revert with 0, 17
                                        if ext_call.return_data[0] > target[address(arg4)].field_0:
                                            target[address(arg4)].field_0 = 0
                                        else:
                                            if target[address(arg4)].field_0 < ext_call.return_data[0]:
                                                revert with 0, 17
                                            target[address(arg4)].field_0 -= ext_call.return_data[0]
                                        if arg6 <= _9115 - ext_call.return_data[0] - (_9115 - ext_call.return_data[0] / 100000):
                                            if target[address(arg5)].field_0 > !arg6:
                                                revert with 0, 17
                                            target[address(arg5)].field_0 += arg6
                                        else:
                                            if target[address(arg5)].field_0 > !(_9115 - ext_call.return_data[0] - (_9115 - ext_call.return_data[0] / 100000)):
                                                revert with 0, 17
                                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9115 - ext_call.return_data[0] - (_9115 - ext_call.return_data[0] / 100000)
                                else:
                                    mem[(4 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                                    mem[(4 * ceil32(return_data.size)) + 260] = arg3
                                    mem[(4 * ceil32(return_data.size)) + 292] = 160
                                    mem[(4 * ceil32(return_data.size)) + 388] = 2
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 160
                                    t = (4 * ceil32(return_data.size)) + 420
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
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
                                    _4784 = mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
                                    require mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255 < (4 * ceil32(return_data.size)) + return_data.size + 224
                                    _4808 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307():
                                        revert with 0, 65
                                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
                                    mem[(6 * ceil32(return_data.size)) + 224] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                    require return_data.size >= _4784 + (32 * _4808) + 32
                                    mem[(6 * ceil32(return_data.size)) + 256 len 32 * _4808] = mem[(4 * ceil32(return_data.size)) + _4784 + 256 len 32 * _4808]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg5))
                                    staticcall address(arg5).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9092 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _9116 = mem[_9092]
                                    _9140 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9140] = 30
                                    mem[_9140 + 32] = 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] > _9116:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if _9116 < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if _9116 - ext_call.return_data[0] < arg3:
                                        revert with 0, 'output not enough'
                                    if not arg7:
                                        if ext_call.return_data[0] > target[address(arg4)].field_0:
                                            target[address(arg4)].field_0 = 0
                                        else:
                                            if target[address(arg4)].field_0 < ext_call.return_data[0]:
                                                revert with 0, 17
                                            target[address(arg4)].field_0 -= ext_call.return_data[0]
                                        if arg6 <= _9116 - ext_call.return_data[0]:
                                            if target[address(arg5)].field_0 > !arg6:
                                                revert with 0, 17
                                            target[address(arg5)].field_0 += arg6
                                        else:
                                            if target[address(arg5)].field_0 > !(_9116 - ext_call.return_data[0]):
                                                revert with 0, 17
                                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9116 - ext_call.return_data[0]
                                    else:
                                        mem[(4 * ceil32(return_data.size)) + 160] = address(arg5)
                                        mem[(4 * ceil32(return_data.size)) + 192] = address(arg4)
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(arg1)
                                        require ext_code.size(address(arg5))
                                        staticcall address(arg5).0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(arg1)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9608 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9608] >= _9116 - ext_call.return_data[0] / 100000:
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _9116 - ext_call.return_data[0] / 100000
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 160
                                            mem[mem[64] + 164] = 2
                                            idx = 0
                                            s = (4 * ceil32(return_data.size)) + 160
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
                                                args _9116 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13293 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_13293] <= test266151307()
                                            require _13293 + mem[_13293] + 31 < _13293 + return_data.size
                                            if mem[_13293 + mem[_13293]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_13293 + mem[_13293]]) + 1 < 0 or _13293 + ceil32(return_data.size) + ceil32(32 * mem[_13293 + mem[_13293]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require return_data.size >= mem[_13293] + (32 * mem[_13293 + mem[_13293]]) + 32
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
                                            _10002 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_10002] == bool(mem[_10002])
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _9116 - ext_call.return_data[0] / 100000
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 160
                                            mem[mem[64] + 164] = 2
                                            idx = 0
                                            s = (4 * ceil32(return_data.size)) + 160
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
                                                args _9116 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13294 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_13294] <= test266151307()
                                            require _13294 + mem[_13294] + 31 < _13294 + return_data.size
                                            if mem[_13294 + mem[_13294]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_13294 + mem[_13294]]) + 1 < 0 or _13294 + ceil32(return_data.size) + ceil32(32 * mem[_13294 + mem[_13294]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require return_data.size >= mem[_13294] + (32 * mem[_13294 + mem[_13294]]) + 32
                                        if _9116 - ext_call.return_data[0] < _9116 - ext_call.return_data[0] / 100000:
                                            revert with 0, 17
                                        if ext_call.return_data[0] > target[address(arg4)].field_0:
                                            target[address(arg4)].field_0 = 0
                                        else:
                                            if target[address(arg4)].field_0 < ext_call.return_data[0]:
                                                revert with 0, 17
                                            target[address(arg4)].field_0 -= ext_call.return_data[0]
                                        if arg6 <= _9116 - ext_call.return_data[0] - (_9116 - ext_call.return_data[0] / 100000):
                                            if target[address(arg5)].field_0 > !arg6:
                                                revert with 0, 17
                                            target[address(arg5)].field_0 += arg6
                                        else:
                                            if target[address(arg5)].field_0 > !(_9116 - ext_call.return_data[0] - (_9116 - ext_call.return_data[0] / 100000)):
                                                revert with 0, 17
                                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9116 - ext_call.return_data[0] - (_9116 - ext_call.return_data[0] / 100000)
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
                                if arg8:
                                    mem[(6 * ceil32(return_data.size)) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[(6 * ceil32(return_data.size)) + 228] = arg3
                                    mem[(6 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                                    mem[(6 * ceil32(return_data.size)) + 292] = 160
                                    mem[(6 * ceil32(return_data.size)) + 388] = 2
                                    idx = 0
                                    s = (6 * ceil32(return_data.size)) + 160
                                    t = (6 * ceil32(return_data.size)) + 420
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(6 * ceil32(return_data.size)) + 324] = this.address
                                    mem[(6 * ceil32(return_data.size)) + 356] = stor6
                                    require ext_code.size(address(arg1))
                                    call address(arg1).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg3, ext_call.return_data[0], Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 420 len 64]), address(this.address), stor6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (7 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _4785 = mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                                    require mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255 < (6 * ceil32(return_data.size)) + return_data.size + 224
                                    _4809 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                                    if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307():
                                        revert with 0, 65
                                    mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                                    mem[(7 * ceil32(return_data.size)) + 224] = _4809
                                    require return_data.size >= _4785 + (32 * _4809) + 32
                                    mem[(7 * ceil32(return_data.size)) + 256 len 32 * _4809] = mem[(6 * ceil32(return_data.size)) + _4785 + 256 len 32 * _4809]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg5))
                                    staticcall address(arg5).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9093 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _9117 = mem[_9093]
                                    _9141 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9141] = 30
                                    mem[_9141 + 32] = 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] > _9117:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if _9117 < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if _9117 - ext_call.return_data[0] < arg3:
                                        revert with 0, 'output not enough'
                                    if not arg7:
                                        if ext_call.return_data[0] > target[address(arg4)].field_0:
                                            target[address(arg4)].field_0 = 0
                                        else:
                                            if target[address(arg4)].field_0 < ext_call.return_data[0]:
                                                revert with 0, 17
                                            target[address(arg4)].field_0 -= ext_call.return_data[0]
                                        if arg6 <= _9117 - ext_call.return_data[0]:
                                            if target[address(arg5)].field_0 > !arg6:
                                                revert with 0, 17
                                            target[address(arg5)].field_0 += arg6
                                        else:
                                            if target[address(arg5)].field_0 > !(_9117 - ext_call.return_data[0]):
                                                revert with 0, 17
                                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9117 - ext_call.return_data[0]
                                    else:
                                        mem[(6 * ceil32(return_data.size)) + 160] = address(arg5)
                                        mem[(6 * ceil32(return_data.size)) + 192] = address(arg4)
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(arg1)
                                        require ext_code.size(address(arg5))
                                        staticcall address(arg5).0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(arg1)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9611 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9611] >= _9117 - ext_call.return_data[0] / 100000:
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _9117 - ext_call.return_data[0] / 100000
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 160
                                            mem[mem[64] + 164] = 2
                                            idx = 0
                                            s = (6 * ceil32(return_data.size)) + 160
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
                                                args _9117 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13295 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_13295] <= test266151307()
                                            require _13295 + mem[_13295] + 31 < _13295 + return_data.size
                                            if mem[_13295 + mem[_13295]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_13295 + mem[_13295]]) + 1 < 0 or _13295 + ceil32(return_data.size) + ceil32(32 * mem[_13295 + mem[_13295]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require return_data.size >= mem[_13295] + (32 * mem[_13295 + mem[_13295]]) + 32
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
                                            _10006 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_10006] == bool(mem[_10006])
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _9117 - ext_call.return_data[0] / 100000
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 160
                                            mem[mem[64] + 164] = 2
                                            idx = 0
                                            s = (6 * ceil32(return_data.size)) + 160
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
                                                args _9117 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13296 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_13296] <= test266151307()
                                            require _13296 + mem[_13296] + 31 < _13296 + return_data.size
                                            if mem[_13296 + mem[_13296]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_13296 + mem[_13296]]) + 1 < 0 or _13296 + ceil32(return_data.size) + ceil32(32 * mem[_13296 + mem[_13296]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require return_data.size >= mem[_13296] + (32 * mem[_13296 + mem[_13296]]) + 32
                                        if _9117 - ext_call.return_data[0] < _9117 - ext_call.return_data[0] / 100000:
                                            revert with 0, 17
                                        if ext_call.return_data[0] > target[address(arg4)].field_0:
                                            target[address(arg4)].field_0 = 0
                                        else:
                                            if target[address(arg4)].field_0 < ext_call.return_data[0]:
                                                revert with 0, 17
                                            target[address(arg4)].field_0 -= ext_call.return_data[0]
                                        if arg6 <= _9117 - ext_call.return_data[0] - (_9117 - ext_call.return_data[0] / 100000):
                                            if target[address(arg5)].field_0 > !arg6:
                                                revert with 0, 17
                                            target[address(arg5)].field_0 += arg6
                                        else:
                                            if target[address(arg5)].field_0 > !(_9117 - ext_call.return_data[0] - (_9117 - ext_call.return_data[0] / 100000)):
                                                revert with 0, 17
                                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9117 - ext_call.return_data[0] - (_9117 - ext_call.return_data[0] / 100000)
                                else:
                                    mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(6 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                                    mem[(6 * ceil32(return_data.size)) + 260] = arg3
                                    mem[(6 * ceil32(return_data.size)) + 292] = 160
                                    mem[(6 * ceil32(return_data.size)) + 388] = 2
                                    idx = 0
                                    s = (6 * ceil32(return_data.size)) + 160
                                    t = (6 * ceil32(return_data.size)) + 420
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
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
                                    _4786 = mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
                                    require mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255 < (6 * ceil32(return_data.size)) + return_data.size + 224
                                    _4810 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                    if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307():
                                        revert with 0, 65
                                    mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
                                    mem[(7 * ceil32(return_data.size)) + 224] = _4810
                                    require return_data.size >= _4786 + (32 * _4810) + 32
                                    mem[(7 * ceil32(return_data.size)) + 256 len 32 * _4810] = mem[(6 * ceil32(return_data.size)) + _4786 + 256 len 32 * _4810]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg5))
                                    staticcall address(arg5).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9094 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _9118 = mem[_9094]
                                    _9142 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9142] = 30
                                    mem[_9142 + 32] = 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] > _9118:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if _9118 < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if _9118 - ext_call.return_data[0] < arg3:
                                        revert with 0, 'output not enough'
                                    if not arg7:
                                        if ext_call.return_data[0] > target[address(arg4)].field_0:
                                            target[address(arg4)].field_0 = 0
                                        else:
                                            if target[address(arg4)].field_0 < ext_call.return_data[0]:
                                                revert with 0, 17
                                            target[address(arg4)].field_0 -= ext_call.return_data[0]
                                        if arg6 <= _9118 - ext_call.return_data[0]:
                                            if target[address(arg5)].field_0 > !arg6:
                                                revert with 0, 17
                                            target[address(arg5)].field_0 += arg6
                                        else:
                                            if target[address(arg5)].field_0 > !(_9118 - ext_call.return_data[0]):
                                                revert with 0, 17
                                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9118 - ext_call.return_data[0]
                                    else:
                                        mem[(6 * ceil32(return_data.size)) + 160] = address(arg5)
                                        mem[(6 * ceil32(return_data.size)) + 192] = address(arg4)
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(arg1)
                                        require ext_code.size(address(arg5))
                                        staticcall address(arg5).0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(arg1)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9614 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9614] >= _9118 - ext_call.return_data[0] / 100000:
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _9118 - ext_call.return_data[0] / 100000
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 160
                                            mem[mem[64] + 164] = 2
                                            idx = 0
                                            s = (6 * ceil32(return_data.size)) + 160
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
                                                args _9118 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13297 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_13297] <= test266151307()
                                            require _13297 + mem[_13297] + 31 < _13297 + return_data.size
                                            if mem[_13297 + mem[_13297]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_13297 + mem[_13297]]) + 1 < 0 or _13297 + ceil32(return_data.size) + ceil32(32 * mem[_13297 + mem[_13297]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require return_data.size >= mem[_13297] + (32 * mem[_13297 + mem[_13297]]) + 32
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
                                            _10010 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_10010] == bool(mem[_10010])
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _9118 - ext_call.return_data[0] / 100000
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 160
                                            mem[mem[64] + 164] = 2
                                            idx = 0
                                            s = (6 * ceil32(return_data.size)) + 160
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
                                                args _9118 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13298 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_13298] <= test266151307()
                                            require _13298 + mem[_13298] + 31 < _13298 + return_data.size
                                            if mem[_13298 + mem[_13298]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_13298 + mem[_13298]]) + 1 < 0 or _13298 + ceil32(return_data.size) + ceil32(32 * mem[_13298 + mem[_13298]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require return_data.size >= mem[_13298] + (32 * mem[_13298 + mem[_13298]]) + 32
                                        if _9118 - ext_call.return_data[0] < _9118 - ext_call.return_data[0] / 100000:
                                            revert with 0, 17
                                        if ext_call.return_data[0] > target[address(arg4)].field_0:
                                            target[address(arg4)].field_0 = 0
                                        else:
                                            if target[address(arg4)].field_0 < ext_call.return_data[0]:
                                                revert with 0, 17
                                            target[address(arg4)].field_0 -= ext_call.return_data[0]
                                        if arg6 <= _9118 - ext_call.return_data[0] - (_9118 - ext_call.return_data[0] / 100000):
                                            if target[address(arg5)].field_0 > !arg6:
                                                revert with 0, 17
                                            target[address(arg5)].field_0 += arg6
                                        else:
                                            if target[address(arg5)].field_0 > !(_9118 - ext_call.return_data[0] - (_9118 - ext_call.return_data[0] / 100000)):
                                                revert with 0, 17
                                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9118 - ext_call.return_data[0] - (_9118 - ext_call.return_data[0] / 100000)
                        else:
                            mem[0] = address(arg4)
                            mem[32] = 5
                            if target[address(arg4)].field_0 <= 0:
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
                            if ext_call.return_data[0] >= target[address(arg4)].field_0:
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
                                if arg8:
                                    mem[(4 * ceil32(return_data.size)) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 228] = arg3
                                    mem[(4 * ceil32(return_data.size)) + 260] = target[address(arg4)].field_0
                                    mem[(4 * ceil32(return_data.size)) + 292] = 160
                                    mem[(4 * ceil32(return_data.size)) + 388] = 2
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 160
                                    t = (4 * ceil32(return_data.size)) + 420
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + 324] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 356] = stor6
                                    require ext_code.size(address(arg1))
                                    call address(arg1).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg3, target[address(arg4)].field_0, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 420 len 64]), address(this.address), stor6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (6 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _4787 = mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                                    require mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255 < (4 * ceil32(return_data.size)) + return_data.size + 224
                                    _4811 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307():
                                        revert with 0, 65
                                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                                    mem[(6 * ceil32(return_data.size)) + 224] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                                    require return_data.size >= _4787 + (32 * _4811) + 32
                                    mem[(6 * ceil32(return_data.size)) + 256 len 32 * _4811] = mem[(4 * ceil32(return_data.size)) + _4787 + 256 len 32 * _4811]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg5))
                                    staticcall address(arg5).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9095 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _9119 = mem[_9095]
                                    _9143 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9143] = 30
                                    mem[_9143 + 32] = 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] > _9119:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if _9119 < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if _9119 - ext_call.return_data[0] < arg3:
                                        revert with 0, 'output not enough'
                                    if not arg7:
                                        if target[address(arg4)].field_0 <= target[address(arg4)].field_0:
                                            if target[address(arg4)].field_0 < target[address(arg4)].field_0:
                                                revert with 0, 17
                                        target[address(arg4)].field_0 = 0
                                        if arg6 <= _9119 - ext_call.return_data[0]:
                                            if target[address(arg5)].field_0 > !arg6:
                                                revert with 0, 17
                                            target[address(arg5)].field_0 += arg6
                                        else:
                                            if target[address(arg5)].field_0 > !(_9119 - ext_call.return_data[0]):
                                                revert with 0, 17
                                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9119 - ext_call.return_data[0]
                                    else:
                                        mem[(4 * ceil32(return_data.size)) + 160] = address(arg5)
                                        mem[(4 * ceil32(return_data.size)) + 192] = address(arg4)
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(arg1)
                                        require ext_code.size(address(arg5))
                                        staticcall address(arg5).0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(arg1)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9617 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9617] >= _9119 - ext_call.return_data[0] / 100000:
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _9119 - ext_call.return_data[0] / 100000
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 160
                                            mem[mem[64] + 164] = 2
                                            idx = 0
                                            s = (4 * ceil32(return_data.size)) + 160
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
                                                args _9119 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13299 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_13299] <= test266151307()
                                            require _13299 + mem[_13299] + 31 < _13299 + return_data.size
                                            if mem[_13299 + mem[_13299]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_13299 + mem[_13299]]) + 1 < 0 or _13299 + ceil32(return_data.size) + ceil32(32 * mem[_13299 + mem[_13299]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require return_data.size >= mem[_13299] + (32 * mem[_13299 + mem[_13299]]) + 32
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
                                            _10014 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_10014] == bool(mem[_10014])
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _9119 - ext_call.return_data[0] / 100000
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 160
                                            mem[mem[64] + 164] = 2
                                            idx = 0
                                            s = (4 * ceil32(return_data.size)) + 160
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
                                                args _9119 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13300 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_13300] <= test266151307()
                                            require _13300 + mem[_13300] + 31 < _13300 + return_data.size
                                            if mem[_13300 + mem[_13300]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_13300 + mem[_13300]]) + 1 < 0 or _13300 + ceil32(return_data.size) + ceil32(32 * mem[_13300 + mem[_13300]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require return_data.size >= mem[_13300] + (32 * mem[_13300 + mem[_13300]]) + 32
                                        if _9119 - ext_call.return_data[0] < _9119 - ext_call.return_data[0] / 100000:
                                            revert with 0, 17
                                        if target[address(arg4)].field_0 <= target[address(arg4)].field_0:
                                            if target[address(arg4)].field_0 < target[address(arg4)].field_0:
                                                revert with 0, 17
                                        target[address(arg4)].field_0 = 0
                                        if arg6 <= _9119 - ext_call.return_data[0] - (_9119 - ext_call.return_data[0] / 100000):
                                            if target[address(arg5)].field_0 > !arg6:
                                                revert with 0, 17
                                            target[address(arg5)].field_0 += arg6
                                        else:
                                            if target[address(arg5)].field_0 > !(_9119 - ext_call.return_data[0] - (_9119 - ext_call.return_data[0] / 100000)):
                                                revert with 0, 17
                                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9119 - ext_call.return_data[0] - (_9119 - ext_call.return_data[0] / 100000)
                                else:
                                    mem[(4 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 228] = target[address(arg4)].field_0
                                    mem[(4 * ceil32(return_data.size)) + 260] = arg3
                                    mem[(4 * ceil32(return_data.size)) + 292] = 160
                                    mem[(4 * ceil32(return_data.size)) + 388] = 2
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 160
                                    t = (4 * ceil32(return_data.size)) + 420
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + 324] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 356] = stor6
                                    require ext_code.size(address(arg1))
                                    call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args target[address(arg4)].field_0, arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 420 len 64]), address(this.address), stor6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (6 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _4788 = mem[(4 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32
                                    require mem[(4 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 <= test266151307()
                                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 + 255 < (4 * ceil32(return_data.size)) + return_data.size + 224
                                    _4812 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 + 224]
                                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 + 224] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 + 224]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 + 224]) + 225 > test266151307():
                                        revert with 0, 65
                                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 + 224]) + 225
                                    mem[(6 * ceil32(return_data.size)) + 224] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 + 224]
                                    require return_data.size >= _4788 + (32 * _4812) + 32
                                    mem[(6 * ceil32(return_data.size)) + 256 len 32 * _4812] = mem[(4 * ceil32(return_data.size)) + _4788 + 256 len 32 * _4812]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg5))
                                    staticcall address(arg5).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9096 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _9120 = mem[_9096]
                                    _9144 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9144] = 30
                                    mem[_9144 + 32] = 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] > _9120:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if _9120 < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if _9120 - ext_call.return_data[0] < arg3:
                                        revert with 0, 'output not enough'
                                    if not arg7:
                                        if target[address(arg4)].field_0 <= target[address(arg4)].field_0:
                                            if target[address(arg4)].field_0 < target[address(arg4)].field_0:
                                                revert with 0, 17
                                        target[address(arg4)].field_0 = 0
                                        if arg6 <= _9120 - ext_call.return_data[0]:
                                            if target[address(arg5)].field_0 > !arg6:
                                                revert with 0, 17
                                            target[address(arg5)].field_0 += arg6
                                        else:
                                            if target[address(arg5)].field_0 > !(_9120 - ext_call.return_data[0]):
                                                revert with 0, 17
                                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9120 - ext_call.return_data[0]
                                    else:
                                        mem[(4 * ceil32(return_data.size)) + 160] = address(arg5)
                                        mem[(4 * ceil32(return_data.size)) + 192] = address(arg4)
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(arg1)
                                        require ext_code.size(address(arg5))
                                        staticcall address(arg5).0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(arg1)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9620 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9620] >= _9120 - ext_call.return_data[0] / 100000:
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _9120 - ext_call.return_data[0] / 100000
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 160
                                            mem[mem[64] + 164] = 2
                                            idx = 0
                                            s = (4 * ceil32(return_data.size)) + 160
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
                                                args _9120 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13301 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_13301] <= test266151307()
                                            require _13301 + mem[_13301] + 31 < _13301 + return_data.size
                                            if mem[_13301 + mem[_13301]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_13301 + mem[_13301]]) + 1 < 0 or _13301 + ceil32(return_data.size) + ceil32(32 * mem[_13301 + mem[_13301]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require return_data.size >= mem[_13301] + (32 * mem[_13301 + mem[_13301]]) + 32
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
                                            _10018 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_10018] == bool(mem[_10018])
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _9120 - ext_call.return_data[0] / 100000
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 160
                                            mem[mem[64] + 164] = 2
                                            idx = 0
                                            s = (4 * ceil32(return_data.size)) + 160
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
                                                args _9120 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13302 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_13302] <= test266151307()
                                            require _13302 + mem[_13302] + 31 < _13302 + return_data.size
                                            if mem[_13302 + mem[_13302]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_13302 + mem[_13302]]) + 1 < 0 or _13302 + ceil32(return_data.size) + ceil32(32 * mem[_13302 + mem[_13302]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require return_data.size >= mem[_13302] + (32 * mem[_13302 + mem[_13302]]) + 32
                                        if _9120 - ext_call.return_data[0] < _9120 - ext_call.return_data[0] / 100000:
                                            revert with 0, 17
                                        if target[address(arg4)].field_0 <= target[address(arg4)].field_0:
                                            if target[address(arg4)].field_0 < target[address(arg4)].field_0:
                                                revert with 0, 17
                                        target[address(arg4)].field_0 = 0
                                        if arg6 <= _9120 - ext_call.return_data[0] - (_9120 - ext_call.return_data[0] / 100000):
                                            if target[address(arg5)].field_0 > !arg6:
                                                revert with 0, 17
                                            target[address(arg5)].field_0 += arg6
                                        else:
                                            if target[address(arg5)].field_0 > !(_9120 - ext_call.return_data[0] - (_9120 - ext_call.return_data[0] / 100000)):
                                                revert with 0, 17
                                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9120 - ext_call.return_data[0] - (_9120 - ext_call.return_data[0] / 100000)
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
                                if arg8:
                                    mem[(6 * ceil32(return_data.size)) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[(6 * ceil32(return_data.size)) + 228] = arg3
                                    mem[(6 * ceil32(return_data.size)) + 260] = target[address(arg4)].field_0
                                    mem[(6 * ceil32(return_data.size)) + 292] = 160
                                    mem[(6 * ceil32(return_data.size)) + 388] = 2
                                    idx = 0
                                    s = (6 * ceil32(return_data.size)) + 160
                                    t = (6 * ceil32(return_data.size)) + 420
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(6 * ceil32(return_data.size)) + 324] = this.address
                                    mem[(6 * ceil32(return_data.size)) + 356] = stor6
                                    require ext_code.size(address(arg1))
                                    call address(arg1).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg3, target[address(arg4)].field_0, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 420 len 64]), address(this.address), stor6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (7 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _4789 = mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                                    require mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                                    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255 < (6 * ceil32(return_data.size)) + return_data.size + 224
                                    _4813 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                                    if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307():
                                        revert with 0, 65
                                    mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                                    mem[(7 * ceil32(return_data.size)) + 224] = _4813
                                    require return_data.size >= _4789 + (32 * _4813) + 32
                                    mem[(7 * ceil32(return_data.size)) + 256 len 32 * _4813] = mem[(6 * ceil32(return_data.size)) + _4789 + 256 len 32 * _4813]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg5))
                                    staticcall address(arg5).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9097 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _9121 = mem[_9097]
                                    _9145 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9145] = 30
                                    mem[_9145 + 32] = 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] > _9121:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if _9121 < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if _9121 - ext_call.return_data[0] < arg3:
                                        revert with 0, 'output not enough'
                                    if not arg7:
                                        if target[address(arg4)].field_0 <= target[address(arg4)].field_0:
                                            if target[address(arg4)].field_0 < target[address(arg4)].field_0:
                                                revert with 0, 17
                                        target[address(arg4)].field_0 = 0
                                        if arg6 <= _9121 - ext_call.return_data[0]:
                                            if target[address(arg5)].field_0 > !arg6:
                                                revert with 0, 17
                                            target[address(arg5)].field_0 += arg6
                                        else:
                                            if target[address(arg5)].field_0 > !(_9121 - ext_call.return_data[0]):
                                                revert with 0, 17
                                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9121 - ext_call.return_data[0]
                                    else:
                                        mem[(6 * ceil32(return_data.size)) + 160] = address(arg5)
                                        mem[(6 * ceil32(return_data.size)) + 192] = address(arg4)
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(arg1)
                                        require ext_code.size(address(arg5))
                                        staticcall address(arg5).0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(arg1)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9623 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9623] >= _9121 - ext_call.return_data[0] / 100000:
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _9121 - ext_call.return_data[0] / 100000
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 160
                                            mem[mem[64] + 164] = 2
                                            idx = 0
                                            s = (6 * ceil32(return_data.size)) + 160
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
                                                args _9121 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13303 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_13303] <= test266151307()
                                            require _13303 + mem[_13303] + 31 < _13303 + return_data.size
                                            if mem[_13303 + mem[_13303]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_13303 + mem[_13303]]) + 1 < 0 or _13303 + ceil32(return_data.size) + ceil32(32 * mem[_13303 + mem[_13303]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require return_data.size >= mem[_13303] + (32 * mem[_13303 + mem[_13303]]) + 32
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
                                            _10022 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_10022] == bool(mem[_10022])
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _9121 - ext_call.return_data[0] / 100000
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 160
                                            mem[mem[64] + 164] = 2
                                            idx = 0
                                            s = (6 * ceil32(return_data.size)) + 160
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
                                                args _9121 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13304 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_13304] <= test266151307()
                                            require _13304 + mem[_13304] + 31 < _13304 + return_data.size
                                            if mem[_13304 + mem[_13304]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_13304 + mem[_13304]]) + 1 < 0 or _13304 + ceil32(return_data.size) + ceil32(32 * mem[_13304 + mem[_13304]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require return_data.size >= mem[_13304] + (32 * mem[_13304 + mem[_13304]]) + 32
                                        if _9121 - ext_call.return_data[0] < _9121 - ext_call.return_data[0] / 100000:
                                            revert with 0, 17
                                        if target[address(arg4)].field_0 <= target[address(arg4)].field_0:
                                            if target[address(arg4)].field_0 < target[address(arg4)].field_0:
                                                revert with 0, 17
                                        target[address(arg4)].field_0 = 0
                                        if arg6 <= _9121 - ext_call.return_data[0] - (_9121 - ext_call.return_data[0] / 100000):
                                            if target[address(arg5)].field_0 > !arg6:
                                                revert with 0, 17
                                            target[address(arg5)].field_0 += arg6
                                        else:
                                            if target[address(arg5)].field_0 > !(_9121 - ext_call.return_data[0] - (_9121 - ext_call.return_data[0] / 100000)):
                                                revert with 0, 17
                                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9121 - ext_call.return_data[0] - (_9121 - ext_call.return_data[0] / 100000)
                                else:
                                    mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(6 * ceil32(return_data.size)) + 228] = target[address(arg4)].field_0
                                    mem[(6 * ceil32(return_data.size)) + 260] = arg3
                                    mem[(6 * ceil32(return_data.size)) + 292] = 160
                                    mem[(6 * ceil32(return_data.size)) + 388] = 2
                                    idx = 0
                                    s = (6 * ceil32(return_data.size)) + 160
                                    t = (6 * ceil32(return_data.size)) + 420
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(6 * ceil32(return_data.size)) + 324] = this.address
                                    mem[(6 * ceil32(return_data.size)) + 356] = stor6
                                    require ext_code.size(address(arg1))
                                    call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args target[address(arg4)].field_0, arg3, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 420 len 64]), address(this.address), stor6
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (7 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _4790 = mem[(6 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32
                                    require mem[(6 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 <= test266151307()
                                    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 + 255 < (6 * ceil32(return_data.size)) + return_data.size + 224
                                    _4814 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 + 224]
                                    if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 + 224] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 + 224]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 + 224]) + 225 > test266151307():
                                        revert with 0, 65
                                    mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], target[address(arg4)].field_32 + 224]) + 225
                                    mem[(7 * ceil32(return_data.size)) + 224] = _4814
                                    require return_data.size >= _4790 + (32 * _4814) + 32
                                    mem[(7 * ceil32(return_data.size)) + 256 len 32 * _4814] = mem[(6 * ceil32(return_data.size)) + _4790 + 256 len 32 * _4814]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg5))
                                    staticcall address(arg5).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9098 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _9122 = mem[_9098]
                                    _9146 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9146] = 30
                                    mem[_9146 + 32] = 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] > _9122:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if _9122 < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if _9122 - ext_call.return_data[0] < arg3:
                                        revert with 0, 'output not enough'
                                    if not arg7:
                                        if target[address(arg4)].field_0 <= target[address(arg4)].field_0:
                                            if target[address(arg4)].field_0 < target[address(arg4)].field_0:
                                                revert with 0, 17
                                        target[address(arg4)].field_0 = 0
                                        if arg6 <= _9122 - ext_call.return_data[0]:
                                            if target[address(arg5)].field_0 > !arg6:
                                                revert with 0, 17
                                            target[address(arg5)].field_0 += arg6
                                        else:
                                            if target[address(arg5)].field_0 > !(_9122 - ext_call.return_data[0]):
                                                revert with 0, 17
                                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9122 - ext_call.return_data[0]
                                    else:
                                        mem[(6 * ceil32(return_data.size)) + 160] = address(arg5)
                                        mem[(6 * ceil32(return_data.size)) + 192] = address(arg4)
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = address(arg1)
                                        require ext_code.size(address(arg5))
                                        staticcall address(arg5).0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args this.address, address(arg1)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9626 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_9626] >= _9122 - ext_call.return_data[0] / 100000:
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _9122 - ext_call.return_data[0] / 100000
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 160
                                            mem[mem[64] + 164] = 2
                                            idx = 0
                                            s = (6 * ceil32(return_data.size)) + 160
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
                                                args _9122 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13305 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_13305] <= test266151307()
                                            require _13305 + mem[_13305] + 31 < _13305 + return_data.size
                                            if mem[_13305 + mem[_13305]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_13305 + mem[_13305]]) + 1 < 0 or _13305 + ceil32(return_data.size) + ceil32(32 * mem[_13305 + mem[_13305]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require return_data.size >= mem[_13305] + (32 * mem[_13305 + mem[_13305]]) + 32
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
                                            _10026 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_10026] == bool(mem[_10026])
                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _9122 - ext_call.return_data[0] / 100000
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 160
                                            mem[mem[64] + 164] = 2
                                            idx = 0
                                            s = (6 * ceil32(return_data.size)) + 160
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
                                                args _9122 - ext_call.return_data[0] / 100000, 0, 160, address(this.address), stor6, 2, mem[mem[64] + 196 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13306 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_13306] <= test266151307()
                                            require _13306 + mem[_13306] + 31 < _13306 + return_data.size
                                            if mem[_13306 + mem[_13306]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_13306 + mem[_13306]]) + 1 < 0 or _13306 + ceil32(return_data.size) + ceil32(32 * mem[_13306 + mem[_13306]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require return_data.size >= mem[_13306] + (32 * mem[_13306 + mem[_13306]]) + 32
                                        if _9122 - ext_call.return_data[0] < _9122 - ext_call.return_data[0] / 100000:
                                            revert with 0, 17
                                        if target[address(arg4)].field_0 <= target[address(arg4)].field_0:
                                            if target[address(arg4)].field_0 < target[address(arg4)].field_0:
                                                revert with 0, 17
                                        target[address(arg4)].field_0 = 0
                                        if arg6 <= _9122 - ext_call.return_data[0] - (_9122 - ext_call.return_data[0] / 100000):
                                            if target[address(arg5)].field_0 > !arg6:
                                                revert with 0, 17
                                            target[address(arg5)].field_0 += arg6
                                        else:
                                            if target[address(arg5)].field_0 > !(_9122 - ext_call.return_data[0] - (_9122 - ext_call.return_data[0] / 100000)):
                                                revert with 0, 17
                                            target[address(arg5)].field_0 = target[address(arg5)].field_0 + _9122 - ext_call.return_data[0] - (_9122 - ext_call.return_data[0] / 100000)
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
