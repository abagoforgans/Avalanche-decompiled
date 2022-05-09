contract main {




// =====================  Runtime code  =====================


const sub_4229dbe3(?) = eth.balance(this.address)


uint16 stor0;
address stor0;
address owner; offset 16
mapping of uint8 stor1;
mapping of address tokenList;
mapping of uint256 sub_ba27f50b;
uint256 stor4;
array of address stor5;
array of uint256 stor6;
address stor7;
address stor8;
address stor9;
address stor10;
address stor11;
address stor12;
uint256 stor13;
uint8 stor14;

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

function sub_44d232b6(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if stor10 != address(arg1):
        return (stor10 == address(arg1))
    return (bool(arg2) == bool(stor14))
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

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint16(stor0.field_0) > 65534:
        revert with 'NH{q', 17
    uint16(stor0.field_0) = uint16(uint16(stor0.field_0) + 1)
    if uint16(stor0.field_0) >= 3:
        owner = arg1
}

function sub_4b8eb24c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not sub_ba27f50b[address(arg1)]:
        if stor4 > -2:
            revert with 'NH{q', 17
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
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require calldata.size > arg3 + 35
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 98 < 97 or ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 > test266151307():
        revert with 'NH{q', 65
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
            revert with 'NH{q', 18
        return (ext_call.return_data[0] / 10^ext_call.return_data[31 len 1])
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
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
        revert with 'NH{q', 17
    if not s * t:
        revert with 'NH{q', 18
    return (ext_call.return_data[0] / s * t)
}

function sub_f35297cd(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == bool(arg5)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11 = address(arg2)
    stor12 = address(arg3)
    require ext_code.size(address(arg2))
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), test266151307()
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 0 >= stor5.length:
        revert with 'NH{q', 50
    address(stor5.field_0) = address(arg2)
    if 1 >= stor5.length:
        revert with 'NH{q', 50
    address(stor5.field_256) = address(arg3)
    if 0 >= stor6.length:
        revert with 'NH{q', 50
    address(stor6.field_0) = address(arg3)
    if 1 >= stor6.length:
        revert with 'NH{q', 50
    address(stor6.field_256) = address(arg2)
    if not sub_ba27f50b[address(arg2)]:
        if stor4 > -2:
            revert with 'NH{q', 17
        stor4++
        sub_ba27f50b[address(arg2)] = stor4
        tokenList[stor4] = address(arg2)
    if not sub_ba27f50b[address(arg3)]:
        if stor4 > -2:
            revert with 'NH{q', 17
        stor4++
        sub_ba27f50b[address(arg3)] = stor4
        tokenList[stor4] = address(arg3)
    stor7 = address(arg1)
    stor8 = address(arg2)
    stor9 = address(arg3)
    stor10 = address(arg4)
    stor14 = uint8(bool(arg5))
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
            revert with 'NH{q', 17
        require ext_code.size(address(arg1))
        call address(arg1).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg2
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                revert with 'NH{q', 17
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
                    revert with 'NH{q', 17
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
                revert with 'NH{q', 17
            if arg2 and s * t > -1 / arg2:
                revert with 'NH{q', 17
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
            revert with 'NH{q', 17
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
                revert with 'NH{q', 17
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
                    revert with 'NH{q', 17
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
                revert with 'NH{q', 17
            if arg2 and s * t > -1 / arg2:
                revert with 'NH{q', 17
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
                    revert with 'NH{q', 17
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
                        revert with 'NH{q', 17
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
                    revert with 'NH{q', 17
                if False and t * u > 0:
                    revert with 'NH{q', 17
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
            revert with 'NH{q', 17
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
                    revert with 'NH{q', 17
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
                        revert with 'NH{q', 17
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
                    revert with 'NH{q', 17
                if False and t * u > 0:
                    revert with 'NH{q', 17
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
            revert with 'NH{q', 17
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
            revert with 'NH{q', 17
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
                    revert with 'NH{q', 17
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
                        revert with 'NH{q', 17
                    stor4++
                    sub_ba27f50b[address(arg1)] = stor4
                    tokenList[stor4] = address(arg1)
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if arg3 and 10^ext_call.return_data[31 len 1] > -1 / arg3:
                revert with 'NH{q', 17
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
                        revert with 'NH{q', 17
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
                            revert with 'NH{q', 17
                        stor4++
                        sub_ba27f50b[address(arg1)] = stor4
                        tokenList[stor4] = address(arg1)
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
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
                revert with 'NH{q', 17
            if arg3 and s * t > -1 / arg3:
                revert with 'NH{q', 17
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
                        revert with 'NH{q', 17
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
                            revert with 'NH{q', 17
                        stor4++
                        sub_ba27f50b[address(arg1)] = stor4
                        tokenList[stor4] = address(arg1)
}

function sub_e24be30d(?) {
    require calldata.size - 4 >= 96
    require arg3 == address(arg3)
    mem[32] = 1
    if not stor1[msg.sender]:
        revert with 0, 'white only'
    require ext_code.size(address(arg3))
    staticcall address(arg3).getReserves() with:
            gas gas_remaining wei
    mem[96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 'INSUFFICIENT_LIQUIDITY'
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 'INSUFFICIENT_LIQUIDITY'
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(stor11)
    staticcall stor11.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'balance not enough'
    if stor10 != address(arg3):
        revert with 0, 'invalid task'
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 100] = arg1
    mem[(4 * ceil32(return_data.size)) + 132] = arg2
    mem[(4 * ceil32(return_data.size)) + 164] = 160
    mem[(4 * ceil32(return_data.size)) + 260] = stor5.length
    mem[0] = 5
    idx = 0
    s = 0
    t = (4 * ceil32(return_data.size)) + 292
    while idx < stor5.length:
        mem[t] = stor5[s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 196] = this.address
    mem[(4 * ceil32(return_data.size)) + 228] = stor13
    require ext_code.size(stor7)
    call stor7.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, arg2, Array(len=stor5.length, data=mem[(4 * ceil32(return_data.size)) + 292 len 32 * stor5.length]), address(this.address), stor13
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _68 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32
    require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
    _69 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97
    mem[(6 * ceil32(return_data.size)) + 96] = _69
    require return_data.size >= _68 + (32 * _69) + 32
    mem[(6 * ceil32(return_data.size)) + 128 len 32 * _69] = mem[(4 * ceil32(return_data.size)) + _68 + 128 len 32 * _69]
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _107 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _108 = mem[_107]
    _109 = mem[64]
    mem[64] = mem[64] + 64
    mem[_109] = 30
    mem[_109 + 32] = 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] > _108:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if _108 < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if _108 - ext_call.return_data[0] < arg2:
        revert with 0, 'output not enough'
    if not stor14:
        mem[mem[64] + 4] = owner
        mem[mem[64] + 36] = _108 - ext_call.return_data[0]
        require ext_code.size(stor12)
        call stor12.0xa9059cbb with:
             gas gas_remaining wei
            args address(stor0.field_0), _108 - ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _119 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_119] == bool(mem[_119])
    else:
        mem[mem[64] + 4] = stor7
        mem[mem[64] + 36] = test266151307()
        require ext_code.size(stor12)
        call stor12.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor7, test266151307()
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _123 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_123] == bool(mem[_123])
        _125 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _108 - ext_call.return_data[0] / 100000
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = stor6.length
        mem[0] = 6
        idx = 0
        s = 0
        t = mem[64] + 196
        while idx < stor6.length:
            mem[t] = stor[s + sha3(mem[0])]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        mem[_125 + 100] = this.address
        mem[_125 + 132] = stor13
        require ext_code.size(stor7)
        call stor7.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _125 + (32 * stor6.length) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _141 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _142 = mem[_141]
        require mem[_141] <= test266151307()
        require _141 + mem[_141] + 31 < _141 + return_data.size
        _143 = mem[_141 + mem[_141]]
        if mem[_141 + mem[_141]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(32 * mem[_141 + mem[_141]]) + 1 < 0 or _141 + ceil32(return_data.size) + ceil32(32 * mem[_141 + mem[_141]]) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _141 + ceil32(return_data.size) + ceil32(32 * mem[_141 + mem[_141]]) + 1
        mem[_141 + ceil32(return_data.size)] = _143
        require return_data.size >= _142 + (32 * _143) + 32
        mem[_141 + ceil32(return_data.size) + 32 len 32 * _143] = mem[_141 + _142 + 32 len 32 * _143]
        if _108 - ext_call.return_data[0] < _108 - ext_call.return_data[0] / 100000:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = owner
        mem[mem[64] + 36] = _108 - ext_call.return_data[0] - (_108 - ext_call.return_data[0] / 100000)
        require ext_code.size(stor12)
        call stor12.0xa9059cbb with:
             gas gas_remaining wei
            args address(stor0.field_0), _108 - ext_call.return_data[0] - (_108 - ext_call.return_data[0] / 100000)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _153 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_153] == bool(mem[_153])
}

function _fallback() payable {
    mem[64] = 128
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x946b5793(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x44d232b6(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x853828b6(?????) <= uint32(call.func_hash) >> 224:
                    if uint32(call.func_hash) >> 224 != unknown_0x853828b6(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0x8b09832d(?????):
                            require unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return owner
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
                            _345 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_345] == mem[_345 + 31 len 1]
                            if not mem[_345 + 31 len 1]:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenList[idx])
                                staticcall tokenList[idx].0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _391 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _397 = mem[_391]
                                if mem[_391]:
                                    mem[mem[64] + 4] = owner
                                    mem[mem[64] + 36] = _397
                                    require ext_code.size(tokenList[idx])
                                    call tokenList[idx].0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(stor0.field_0), _397
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _423 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_423] == bool(mem[_423])
                            else:
                                if bool(bool(mem[_345 + 31 len 1] < 78)) or bool(bool(mem[_345 + 31 len 1] < 32)):
                                    if False and 10^mem[_345 + 31 len 1] > 0:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(tokenList[idx])
                                    staticcall tokenList[idx].0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _409 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _420 = mem[_409]
                                    if mem[_409]:
                                        mem[mem[64] + 4] = owner
                                        mem[mem[64] + 36] = _420
                                        require ext_code.size(tokenList[idx])
                                        call tokenList[idx].0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(stor0.field_0), _420
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _443 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_443] == bool(mem[_443])
                                else:
                                    t = 10
                                    u = 1
                                    s = mem[_345 + 31 len 1]
                                    while s > 1:
                                        if t > -1 / t:
                                            revert with 'NH{q', 17
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
                                        revert with 'NH{q', 17
                                    if False and t * u > 0:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(tokenList[idx])
                                    staticcall tokenList[idx].0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _485 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _488 = mem[_485]
                                    if mem[_485]:
                                        mem[mem[64] + 4] = owner
                                        mem[mem[64] + 36] = _488
                                        require ext_code.size(tokenList[idx])
                                        call tokenList[idx].0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(stor0.field_0), _488
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _501 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_501] == bool(mem[_501])
                            if idx == -1:
                                revert with 'NH{q', 17
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
                    if unknown_0x44d232b6(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require arg2 == bool(arg2)
                        if stor10 != address(arg1):
                            return (stor10 == address(arg1))
                        return (bool(arg2) == bool(stor14))
                    if uint32(call.func_hash) >> 224 != unknown_0x4b8eb24c(?????):
                        require unknown_0x6088e93a(?????) == uint32(call.func_hash) >> 224
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
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not sub_ba27f50b[address(arg1)]:
                            if stor4 > -2:
                                revert with 'NH{q', 17
                            stor4++
                            sub_ba27f50b[address(arg1)] = stor4
                            tokenList[stor4] = address(arg1)
            if unknown_0x1b52b9de(?????) > uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != unknown_0x13af4035(?????):
                    require unknown_0x14870d2c(?????) == uint32(call.func_hash) >> 224
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
                        _343 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_343] == mem[_343 + 31 len 1]
                        if not mem[_343 + 31 len 1]:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenList[idx])
                            staticcall tokenList[idx].0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _390 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _396 = mem[_390]
                            if mem[_390]:
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _396
                                require ext_code.size(tokenList[idx])
                                call tokenList[idx].0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(stor0.field_0), _396
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _422 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_422] == bool(mem[_422])
                        else:
                            if bool(bool(mem[_343 + 31 len 1] < 78)) or bool(bool(mem[_343 + 31 len 1] < 32)):
                                if False and 10^mem[_343 + 31 len 1] > 0:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenList[idx])
                                staticcall tokenList[idx].0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _407 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _417 = mem[_407]
                                if mem[_407]:
                                    mem[mem[64] + 4] = owner
                                    mem[mem[64] + 36] = _417
                                    require ext_code.size(tokenList[idx])
                                    call tokenList[idx].0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(stor0.field_0), _417
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _442 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_442] == bool(mem[_442])
                            else:
                                t = 10
                                u = 1
                                s = mem[_343 + 31 len 1]
                                while s > 1:
                                    if t > -1 / t:
                                        revert with 'NH{q', 17
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
                                    revert with 'NH{q', 17
                                if False and t * u > 0:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenList[idx])
                                staticcall tokenList[idx].0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _484 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _487 = mem[_484]
                                if mem[_484]:
                                    mem[mem[64] + 4] = owner
                                    mem[mem[64] + 36] = _487
                                    require ext_code.size(tokenList[idx])
                                    call tokenList[idx].0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(stor0.field_0), _487
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _500 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_500] == bool(mem[_500])
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if uint16(stor0.field_0) > 65534:
                        revert with 'NH{q', 17
                    uint16(stor0.field_0) = uint16(uint16(stor0.field_0) + 1)
                    if uint16(stor0.field_0) >= 3:
                        owner = address(arg1)
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
            if uint32(call.func_hash) >> 224 != unknown_0x30a01c4e(?????):
                require unknown_0x4229dbe3(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return eth.balance(this.address)
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
                    revert with 'NH{q', 18
                return (ext_call.return_data[0] / 10^ext_call.return_data[31 len 1])
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
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
                revert with 'NH{q', 17
            if not s * t:
                revert with 'NH{q', 18
            return (ext_call.return_data[0] / s * t)
        if unknown_0xdad69c20(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x9ead7222(?????) <= uint32(call.func_hash) >> 224:
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
            if unknown_0x946b5793(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 96
                require arg1 == bool(arg1)
                require arg2 <= test266151307()
                require arg2 + 35 < calldata.size
                if arg2.length > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(arg2.length)) + 129 < 128 or ceil32(ceil32(arg2.length)) + 129 > test266151307():
                    revert with 'NH{q', 65
                require arg2 + arg2.length + 36 <= calldata.size
                require arg3 <= test266151307()
                require calldata.size > arg3 + 35
                if arg3.length > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(arg3.length)) + 130 < 129 or ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 130 > test266151307():
                    revert with 'NH{q', 65
                require arg3 + arg3.length + 36 <= calldata.size
                if arg1:
                if arg2.length:
                    revert with arg2[all]
                revert with 0, 
                            32,
                            arg3.length,
                            arg3[all],
                            Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 27) + 256, 32) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 27) + 256
            require unknown_0x9e281a98(?????) == uint32(call.func_hash) >> 224
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
                    revert with 'NH{q', 17
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
                        revert with 'NH{q', 17
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
                            revert with 'NH{q', 17
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
                        revert with 'NH{q', 17
                    if arg2 and s * t > -1 / arg2:
                        revert with 'NH{q', 17
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
            if unknown_0xf35297cd(?????) <= uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != unknown_0xf35297cd(?????):
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
                            revert with 'NH{q', 17
                        require ext_code.size(address(arg1))
                        call address(arg1).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg2
                    else:
                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                            if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                                revert with 'NH{q', 17
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
                                    revert with 'NH{q', 17
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
                                revert with 'NH{q', 17
                            if arg2 and s * t > -1 / arg2:
                                revert with 'NH{q', 17
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
                    require calldata.size - 4 >= 160
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    require arg3 == address(arg3)
                    require arg4 == address(arg4)
                    require arg5 == bool(arg5)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor11 = address(arg2)
                    stor12 = address(arg3)
                    require ext_code.size(address(arg2))
                    call address(arg2).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), test266151307()
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 0 >= stor5.length:
                        revert with 'NH{q', 50
                    address(stor5.field_0) = address(arg2)
                    if 1 >= stor5.length:
                        revert with 'NH{q', 50
                    address(stor5.field_256) = address(arg3)
                    if 0 >= stor6.length:
                        revert with 'NH{q', 50
                    address(stor6.field_0) = address(arg3)
                    if 1 >= stor6.length:
                        revert with 'NH{q', 50
                    address(stor6.field_256) = address(arg2)
                    if not sub_ba27f50b[address(arg2)]:
                        if stor4 > -2:
                            revert with 'NH{q', 17
                        stor4++
                        sub_ba27f50b[address(arg2)] = stor4
                        tokenList[stor4] = address(arg2)
                    if not sub_ba27f50b[address(arg3)]:
                        if stor4 > -2:
                            revert with 'NH{q', 17
                        stor4++
                        sub_ba27f50b[address(arg3)] = stor4
                        tokenList[stor4] = address(arg3)
                    stor7 = address(arg1)
                    stor8 = address(arg2)
                    stor9 = address(arg3)
                    stor10 = address(arg4)
                    stor14 = uint8(bool(arg5))
            else:
                if unknown_0xdad69c20(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor1[address(arg1)] = 0
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xe24be30d(?????):
                        require unknown_0xe551b351(?????) == uint32(call.func_hash) >> 224
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
                                revert with 'NH{q', 17
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
                                        revert with 'NH{q', 17
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
                                            revert with 'NH{q', 17
                                        stor4++
                                        sub_ba27f50b[address(arg1)] = stor4
                                        tokenList[stor4] = address(arg1)
                        else:
                            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                if arg3 and 10^ext_call.return_data[31 len 1] > -1 / arg3:
                                    revert with 'NH{q', 17
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
                                            revert with 'NH{q', 17
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
                                                revert with 'NH{q', 17
                                            stor4++
                                            sub_ba27f50b[address(arg1)] = stor4
                                            tokenList[stor4] = address(arg1)
                            else:
                                s = 10
                                t = 1
                                idx = ext_call.return_data[31 len 1]
                                while idx > 1:
                                    if s > -1 / s:
                                        revert with 'NH{q', 17
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
                                    revert with 'NH{q', 17
                                if arg3 and s * t > -1 / arg3:
                                    revert with 'NH{q', 17
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
                                            revert with 'NH{q', 17
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
                                                revert with 'NH{q', 17
                                            stor4++
                                            sub_ba27f50b[address(arg1)] = stor4
                                            tokenList[stor4] = address(arg1)
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 96
                        require arg3 == address(arg3)
                        mem[32] = 1
                        if not stor1[msg.sender]:
                            revert with 0, 'white only'
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).getReserves() with:
                                gas gas_remaining wei
                        mem[128 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        mem[ceil32(return_data.size) + 132] = this.address
                        require ext_code.size(stor11)
                        staticcall stor11.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg1 > ext_call.return_data[0]:
                            revert with 0, 'balance not enough'
                        if stor10 != address(arg3):
                            revert with 0, 'invalid task'
                        mem[(2 * ceil32(return_data.size)) + 132] = this.address
                        require ext_code.size(stor12)
                        staticcall stor12.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(4 * ceil32(return_data.size)) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 132] = arg1
                        mem[(4 * ceil32(return_data.size)) + 164] = arg2
                        mem[(4 * ceil32(return_data.size)) + 196] = 160
                        mem[(4 * ceil32(return_data.size)) + 292] = stor5.length
                        mem[0] = 5
                        idx = 0
                        s = 0
                        t = (4 * ceil32(return_data.size)) + 324
                        while idx < stor5.length:
                            mem[t] = stor5[s].field_0
                            idx = idx + 1
                            s = s + 1
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 228] = this.address
                        mem[(4 * ceil32(return_data.size)) + 260] = stor13
                        require ext_code.size(stor7)
                        call stor7.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg1, arg2, Array(len=stor5.length, data=mem[(4 * ceil32(return_data.size)) + 324 len 32 * stor5.length]), address(this.address), stor13
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        _352 = mem[(4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg1) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 159 < (4 * ceil32(return_data.size)) + return_data.size + 128
                        _353 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]) + 129 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]) + 129
                        mem[(6 * ceil32(return_data.size)) + 128] = _353
                        require return_data.size >= _352 + (32 * _353) + 32
                        mem[(6 * ceil32(return_data.size)) + 160 len 32 * _353] = mem[(4 * ceil32(return_data.size)) + _352 + 160 len 32 * _353]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor12)
                        staticcall stor12.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _475 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _476 = mem[_475]
                        _477 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_477] = 30
                        mem[_477 + 32] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] > _476:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if _476 < ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if _476 - ext_call.return_data[0] < arg2:
                            revert with 0, 'output not enough'
                        if not stor14:
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _476 - ext_call.return_data[0]
                            require ext_code.size(stor12)
                            call stor12.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor0.field_0), _476 - ext_call.return_data[0]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _499 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_499] == bool(mem[_499])
                        else:
                            mem[mem[64] + 4] = stor7
                            mem[mem[64] + 36] = test266151307()
                            require ext_code.size(stor12)
                            call stor12.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor7, test266151307()
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _507 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_507] == bool(mem[_507])
                            _509 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _476 - ext_call.return_data[0] / 100000
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = stor6.length
                            mem[0] = 6
                            idx = 0
                            s = 0
                            t = mem[64] + 196
                            while idx < stor6.length:
                                mem[t] = stor[s + sha3(mem[0])]
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            mem[_509 + 100] = this.address
                            mem[_509 + 132] = stor13
                            require ext_code.size(stor7)
                            call stor7.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _509 + (32 * stor6.length) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _525 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _526 = mem[_525]
                            require mem[_525] <= test266151307()
                            require _525 + mem[_525] + 31 < _525 + return_data.size
                            _527 = mem[_525 + mem[_525]]
                            if mem[_525 + mem[_525]] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(32 * mem[_525 + mem[_525]]) + 1 < 0 or _525 + ceil32(return_data.size) + ceil32(32 * mem[_525 + mem[_525]]) + 1 > test266151307():
                                revert with 'NH{q', 65
                            mem[64] = _525 + ceil32(return_data.size) + ceil32(32 * mem[_525 + mem[_525]]) + 1
                            mem[_525 + ceil32(return_data.size)] = _527
                            require return_data.size >= _526 + (32 * _527) + 32
                            mem[_525 + ceil32(return_data.size) + 32 len 32 * _527] = mem[_525 + _526 + 32 len 32 * _527]
                            if _476 - ext_call.return_data[0] < _476 - ext_call.return_data[0] / 100000:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _476 - ext_call.return_data[0] - (_476 - ext_call.return_data[0] / 100000)
                            require ext_code.size(stor12)
                            call stor12.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(stor0.field_0), _476 - ext_call.return_data[0] - (_476 - ext_call.return_data[0] / 100000)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _537 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_537] == bool(mem[_537])
}



}
