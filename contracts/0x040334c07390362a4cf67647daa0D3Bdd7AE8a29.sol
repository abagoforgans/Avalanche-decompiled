contract main {




// =====================  Runtime code  =====================


const sub_4229dbe3(?) = eth.balance(this.address)


uint16 stor0;
address creatorAddress; offset 16
address owner;
mapping of uint8 stor2;
mapping of address tokenList;
mapping of uint256 sub_ba27f50b;
uint256 stor5;
array of address stor6;
array of address stor7;
address stor8;
address stor9;
address stor10;
address stor11;
address stor12;
address stor13;
uint256 stor14;
uint8 stor15;

function creator() {
    return creatorAddress
}

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
    return bool(stor2[arg1])
}

function addWhite(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if creatorAddress != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = 1
}

function removeWhite(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if creatorAddress != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = 0
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if creatorAddress != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    if stor0 > 65534:
        revert with 'NH{q', 17
    stor0 = uint16(stor0 + 1)
    if stor0 >= 2:
        stor0 = 0
        owner = arg1
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

function withdrawAllMoney() {
    if owner != msg.sender:
        if creatorAddress != msg.sender:
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
        if creatorAddress != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    if not sub_ba27f50b[address(arg1)]:
        if stor5 > -2:
            revert with 'NH{q', 17
        stor5++
        sub_ba27f50b[address(arg1)] = stor5
        tokenList[stor5] = address(arg1)
}

function sub_13e821df(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == bool(arg4)
    if stor9 != address(arg1):
        return (stor9 == address(arg1))
    if stor10 != address(arg2):
        return (stor10 == address(arg2))
    if stor11 != address(arg3):
        return (stor11 == address(arg3))
    return (bool(arg4) == bool(stor15))
}

function withdrawNFT(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        if creatorAddress != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args this.address, owner, arg2
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
        if creatorAddress != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    stor12 = address(arg2)
    stor13 = address(arg3)
    require ext_code.size(address(arg2))
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), test266151307()
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 0 >= stor6.length:
        revert with 'NH{q', 50
    address(stor6.field_0) = address(arg2)
    if 1 >= stor6.length:
        revert with 'NH{q', 50
    address(stor6.field_256) = address(arg3)
    if 0 >= stor7.length:
        revert with 'NH{q', 50
    address(stor7.field_0) = address(arg3)
    if 1 >= stor7.length:
        revert with 'NH{q', 50
    address(stor7.field_256) = address(arg2)
    if not sub_ba27f50b[address(arg2)]:
        if stor5 > -2:
            revert with 'NH{q', 17
        stor5++
        sub_ba27f50b[address(arg2)] = stor5
        tokenList[stor5] = address(arg2)
    if not sub_ba27f50b[address(arg3)]:
        if stor5 > -2:
            revert with 'NH{q', 17
        stor5++
        sub_ba27f50b[address(arg3)] = stor5
        tokenList[stor5] = address(arg3)
    stor8 = address(arg1)
    stor9 = address(arg2)
    stor10 = address(arg3)
    stor11 = address(arg4)
    stor15 = uint8(bool(arg5))
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
        if creatorAddress != msg.sender:
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
                args owner, arg2
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
                    args owner, ext_call.return_data[0]
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
                    args owner, arg2 * 10^uint8(ext_call.return_data[0])
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
                        args owner, ext_call.return_data[0]
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
                    args owner, arg2 * s * t
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
                        args owner, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_e24be30d(?) {
    require calldata.size - 4 >= 96
    require arg3 == address(arg3)
    if not stor2[msg.sender]:
        if owner != msg.sender:
            if creatorAddress != msg.sender:
                revert with 0, 'white only'
    require ext_code.size(address(arg3))
    staticcall address(arg3).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 'empty pool'
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 'empty pool'
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'balance not enough'
    if stor11 != address(arg3):
        revert with 0, 'invalid task'
    if not stor15:
        require ext_code.size(stor13)
        staticcall stor13.0x70a08231 with:
                gas gas_remaining wei
               args owner
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        s = 0
        t = (4 * ceil32(return_data.size)) + 292
        while idx < stor6.length:
            mem[t] = stor6[s].field_0
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        require ext_code.size(stor8)
        call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1, arg2, Array(len=stor6.length, data=mem[(4 * ceil32(return_data.size)) + 292 len 32 * stor6.length]), owner, stor14
    else:
        idx = 0
        s = 0
        t = (2 * ceil32(return_data.size)) + 292
        while idx < stor6.length:
            mem[t] = stor6[s].field_0
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        require ext_code.size(stor8)
        call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1 / 100000, arg2 / 100000, Array(len=stor6.length, data=mem[(2 * ceil32(return_data.size)) + 292 len 32 * stor6.length]), address(this.address), stor14
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor13)
        call stor13.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor8, test266151307()
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor13)
        staticcall stor13.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        s = 0
        t = (6 * ceil32(return_data.size)) + 292
        while idx < stor7.length:
            mem[t] = stor7[s].field_0
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        require ext_code.size(stor8)
        call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, owner, stor14, stor7.length, mem[(6 * ceil32(return_data.size)) + 292 len 32 * stor7.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg1 < arg1 / 100000:
            revert with 'NH{q', 17
        require ext_code.size(stor13)
        staticcall stor13.0x70a08231 with:
                gas gas_remaining wei
               args owner
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        s = 0
        t = (7 * ceil32(return_data.size)) + 292
        while idx < stor6.length:
            mem[t] = stor6[s].field_0
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        require ext_code.size(stor8)
        call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1 - (arg1 / 100000), arg2, Array(len=stor6.length, data=mem[(7 * ceil32(return_data.size)) + 292 len 32 * stor6.length]), owner, stor14
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor13)
    staticcall stor13.0x70a08231 with:
            gas gas_remaining wei
           args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 0 < arg2:
        revert with 0, 'output not enough'
}

function sub_e551b351(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        if creatorAddress != msg.sender:
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
                if stor5 > -2:
                    revert with 'NH{q', 17
                stor5++
                sub_ba27f50b[address(arg1)] = stor5
                tokenList[stor5] = address(arg1)
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
                    if stor5 > -2:
                        revert with 'NH{q', 17
                    stor5++
                    sub_ba27f50b[address(arg1)] = stor5
                    tokenList[stor5] = address(arg1)
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
                    if stor5 > -2:
                        revert with 'NH{q', 17
                    stor5++
                    sub_ba27f50b[address(arg1)] = stor5
                    tokenList[stor5] = address(arg1)
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
                        if stor5 > -2:
                            revert with 'NH{q', 17
                        stor5++
                        sub_ba27f50b[address(arg1)] = stor5
                        tokenList[stor5] = address(arg1)
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
                    if stor5 > -2:
                        revert with 'NH{q', 17
                    stor5++
                    sub_ba27f50b[address(arg1)] = stor5
                    tokenList[stor5] = address(arg1)
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
                        if stor5 > -2:
                            revert with 'NH{q', 17
                        stor5++
                        sub_ba27f50b[address(arg1)] = stor5
                        tokenList[stor5] = address(arg1)
}

function withdrawAllToken() payable {
    mem[64] = 96
    require not msg.value
    if msg.sender == owner:
        idx = 1
        while idx <= stor5:
            mem[0] = idx
            mem[32] = 3
            require ext_code.size(tokenList[idx])
            staticcall tokenList[idx].0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _67 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_67] == mem[_67 + 31 len 1]
            if not mem[_67 + 31 len 1]:
                mem[mem[64] + 4] = this.address
                require ext_code.size(tokenList[idx])
                staticcall tokenList[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _75 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _77 = mem[_75]
                if mem[_75]:
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _77
                    require ext_code.size(tokenList[idx])
                    call tokenList[idx].0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _77
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _95 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_95] == bool(mem[_95])
            else:
                if bool(bool(mem[_67 + 31 len 1] < 78)) or bool(bool(mem[_67 + 31 len 1] < 32)):
                    if False and 10^mem[_67 + 31 len 1] > 0:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tokenList[idx])
                    staticcall tokenList[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _83 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _91 = mem[_83]
                    if mem[_83]:
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _91
                        require ext_code.size(tokenList[idx])
                        call tokenList[idx].0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _91
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _107 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_107] == bool(mem[_107])
                else:
                    t = 10
                    u = 1
                    s = mem[_67 + 31 len 1]
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
                    _123 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _125 = mem[_123]
                    if mem[_123]:
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _125
                        require ext_code.size(tokenList[idx])
                        call tokenList[idx].0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _125
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _131 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_131] == bool(mem[_131])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if creatorAddress != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        idx = 1
        while idx <= stor5:
            mem[0] = idx
            mem[32] = 3
            require ext_code.size(tokenList[idx])
            staticcall tokenList[idx].0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _68 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_68] == mem[_68 + 31 len 1]
            if not mem[_68 + 31 len 1]:
                mem[mem[64] + 4] = this.address
                require ext_code.size(tokenList[idx])
                staticcall tokenList[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _76 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _78 = mem[_76]
                if mem[_76]:
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _78
                    require ext_code.size(tokenList[idx])
                    call tokenList[idx].0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _78
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _96 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_96] == bool(mem[_96])
            else:
                if bool(bool(mem[_68 + 31 len 1] < 78)) or bool(bool(mem[_68 + 31 len 1] < 32)):
                    if False and 10^mem[_68 + 31 len 1] > 0:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tokenList[idx])
                    staticcall tokenList[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _85 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _94 = mem[_85]
                    if mem[_85]:
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _94
                        require ext_code.size(tokenList[idx])
                        call tokenList[idx].0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _94
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _108 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_108] == bool(mem[_108])
                else:
                    t = 10
                    u = 1
                    s = mem[_68 + 31 len 1]
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
                    _124 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _126 = mem[_124]
                    if mem[_124]:
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _126
                        require ext_code.size(tokenList[idx])
                        call tokenList[idx].0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _126
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _132 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_132] == bool(mem[_132])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function withdrawAll() payable {
    mem[64] = 96
    require not msg.value
    if msg.sender == owner:
        idx = 1
        while idx <= stor5:
            mem[0] = idx
            mem[32] = 3
            require ext_code.size(tokenList[idx])
            staticcall tokenList[idx].0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _113 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_113] == mem[_113 + 31 len 1]
            if not mem[_113 + 31 len 1]:
                mem[mem[64] + 4] = this.address
                require ext_code.size(tokenList[idx])
                staticcall tokenList[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _137 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _140 = mem[_137]
                if mem[_137]:
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _140
                    require ext_code.size(tokenList[idx])
                    call tokenList[idx].0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _140
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _167 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_167] == bool(mem[_167])
            else:
                if bool(bool(mem[_113 + 31 len 1] < 78)) or bool(bool(mem[_113 + 31 len 1] < 32)):
                    if False and 10^mem[_113 + 31 len 1] > 0:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tokenList[idx])
                    staticcall tokenList[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _149 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _160 = mem[_149]
                    if mem[_149]:
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _160
                        require ext_code.size(tokenList[idx])
                        call tokenList[idx].0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _160
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _185 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_185] == bool(mem[_185])
                else:
                    t = 10
                    u = 1
                    s = mem[_113 + 31 len 1]
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
                    _209 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _212 = mem[_209]
                    if mem[_209]:
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _212
                        require ext_code.size(tokenList[idx])
                        call tokenList[idx].0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _212
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _221 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_221] == bool(mem[_221])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if creatorAddress != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if msg.sender == owner:
            idx = 1
            while idx <= stor5:
                mem[0] = idx
                mem[32] = 3
                require ext_code.size(tokenList[idx])
                staticcall tokenList[idx].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _114 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_114] == mem[_114 + 31 len 1]
                if not mem[_114 + 31 len 1]:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tokenList[idx])
                    staticcall tokenList[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _138 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _141 = mem[_138]
                    if mem[_138]:
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _141
                        require ext_code.size(tokenList[idx])
                        call tokenList[idx].0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _141
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _168 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_168] == bool(mem[_168])
                else:
                    if bool(bool(mem[_114 + 31 len 1] < 78)) or bool(bool(mem[_114 + 31 len 1] < 32)):
                        if False and 10^mem[_114 + 31 len 1] > 0:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenList[idx])
                        staticcall tokenList[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _151 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _163 = mem[_151]
                        if mem[_151]:
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _163
                            require ext_code.size(tokenList[idx])
                            call tokenList[idx].0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _163
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _186 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_186] == bool(mem[_186])
                    else:
                        t = 10
                        u = 1
                        s = mem[_114 + 31 len 1]
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
                        _210 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _213 = mem[_210]
                        if mem[_210]:
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _213
                            require ext_code.size(tokenList[idx])
                            call tokenList[idx].0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _213
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _222 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_222] == bool(mem[_222])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            if creatorAddress != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            idx = 1
            while idx <= stor5:
                mem[0] = idx
                mem[32] = 3
                require ext_code.size(tokenList[idx])
                staticcall tokenList[idx].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _115 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_115] == mem[_115 + 31 len 1]
                if not mem[_115 + 31 len 1]:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tokenList[idx])
                    staticcall tokenList[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _139 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _142 = mem[_139]
                    if mem[_139]:
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _142
                        require ext_code.size(tokenList[idx])
                        call tokenList[idx].0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _142
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _169 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_169] == bool(mem[_169])
                else:
                    if bool(bool(mem[_115 + 31 len 1] < 78)) or bool(bool(mem[_115 + 31 len 1] < 32)):
                        if False and 10^mem[_115 + 31 len 1] > 0:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokenList[idx])
                        staticcall tokenList[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _153 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _166 = mem[_153]
                        if mem[_153]:
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _166
                            require ext_code.size(tokenList[idx])
                            call tokenList[idx].0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _166
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _187 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_187] == bool(mem[_187])
                    else:
                        t = 10
                        u = 1
                        s = mem[_115 + 31 len 1]
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
                        _211 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _214 = mem[_211]
                        if mem[_211]:
                            mem[mem[64] + 4] = owner
                            mem[mem[64] + 36] = _214
                            require ext_code.size(tokenList[idx])
                            call tokenList[idx].0xa9059cbb with:
                                 gas gas_remaining wei
                                args owner, _214
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _223 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_223] == bool(mem[_223])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    if owner != msg.sender:
        if creatorAddress != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address):
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    mem[64] = 128
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x8da5cb5b(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x30a01c4e(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x13e821df(?????) <= uint32(call.func_hash) >> 224:
                    if uint32(call.func_hash) >> 224 != unknown_0x13e821df(?????):
                        if unknown_0x14870d2c(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if msg.sender == owner:
                                idx = 1
                                while idx <= stor5:
                                    mem[0] = idx
                                    mem[32] = 3
                                    require ext_code.size(tokenList[idx])
                                    staticcall tokenList[idx].0x313ce567 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _732 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_732] == mem[_732 + 31 len 1]
                                    if not mem[_732 + 31 len 1]:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(tokenList[idx])
                                        staticcall tokenList[idx].0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _870 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _890 = mem[_870]
                                        if mem[_870]:
                                            mem[mem[64] + 4] = owner
                                            mem[mem[64] + 36] = _890
                                            require ext_code.size(tokenList[idx])
                                            call tokenList[idx].0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, _890
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _946 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_946] == bool(mem[_946])
                                    else:
                                        if bool(bool(mem[_732 + 31 len 1] < 78)) or bool(bool(mem[_732 + 31 len 1] < 32)):
                                            if False and 10^mem[_732 + 31 len 1] > 0:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(tokenList[idx])
                                            staticcall tokenList[idx].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _914 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _933 = mem[_914]
                                            if mem[_914]:
                                                mem[mem[64] + 4] = owner
                                                mem[mem[64] + 36] = _933
                                                require ext_code.size(tokenList[idx])
                                                call tokenList[idx].0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args owner, _933
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _989 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_989] == bool(mem[_989])
                                        else:
                                            t = 10
                                            u = 1
                                            s = mem[_732 + 31 len 1]
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
                                            _1098 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _1106 = mem[_1098]
                                            if mem[_1098]:
                                                mem[mem[64] + 4] = owner
                                                mem[mem[64] + 36] = _1106
                                                require ext_code.size(tokenList[idx])
                                                call tokenList[idx].0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args owner, _1106
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _1127 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_1127] == bool(mem[_1127])
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    continue 
                            else:
                                if creatorAddress != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                idx = 1
                                while idx <= stor5:
                                    mem[0] = idx
                                    mem[32] = 3
                                    require ext_code.size(tokenList[idx])
                                    staticcall tokenList[idx].0x313ce567 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _733 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_733] == mem[_733 + 31 len 1]
                                    if not mem[_733 + 31 len 1]:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(tokenList[idx])
                                        staticcall tokenList[idx].0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _871 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _891 = mem[_871]
                                        if mem[_871]:
                                            mem[mem[64] + 4] = owner
                                            mem[mem[64] + 36] = _891
                                            require ext_code.size(tokenList[idx])
                                            call tokenList[idx].0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, _891
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _947 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_947] == bool(mem[_947])
                                    else:
                                        if bool(bool(mem[_733 + 31 len 1] < 78)) or bool(bool(mem[_733 + 31 len 1] < 32)):
                                            if False and 10^mem[_733 + 31 len 1] > 0:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(tokenList[idx])
                                            staticcall tokenList[idx].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _916 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _936 = mem[_916]
                                            if mem[_916]:
                                                mem[mem[64] + 4] = owner
                                                mem[mem[64] + 36] = _936
                                                require ext_code.size(tokenList[idx])
                                                call tokenList[idx].0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args owner, _936
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _990 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_990] == bool(mem[_990])
                                        else:
                                            t = 10
                                            u = 1
                                            s = mem[_733 + 31 len 1]
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
                                            _1099 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _1107 = mem[_1099]
                                            if mem[_1099]:
                                                mem[mem[64] + 4] = owner
                                                mem[mem[64] + 36] = _1107
                                                require ext_code.size(tokenList[idx])
                                                call tokenList[idx].0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args owner, _1107
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _1128 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_1128] == bool(mem[_1128])
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    continue 
                        else:
                            require unknown_0x1b52b9de(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            if owner != msg.sender:
                                if creatorAddress != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                            if eth.balance(this.address):
                                call owner with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    require not msg.value
                    require calldata.size - 4 >= 128
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    require arg3 == address(arg3)
                    require arg4 == bool(arg4)
                    if stor9 != address(arg1):
                        return (stor9 == address(arg1))
                    if stor10 != address(arg2):
                        return (stor10 == address(arg2))
                    if stor11 != address(arg3):
                        return (stor11 == address(arg3))
                    return (bool(arg4) == bool(stor15))
                if creator() == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return creatorAddress
                require unknown_0x13af4035(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    if creatorAddress != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                if stor0 > 65534:
                    revert with 'NH{q', 17
                stor0 = uint16(stor0 + 1)
                if stor0 >= 2:
                    stor0 = 0
                    owner = address(arg1)
            if unknown_0x6088e93a(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x6088e93a(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        if creatorAddress != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                    require ext_code.size(address(arg1))
                    call address(arg1).0x23b872dd with:
                         gas gas_remaining wei
                        args this.address, owner, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x853828b6(?????):
                        require unknown_0x8b09832d(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            if creatorAddress != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                        stor2[address(arg1)] = 1
                    else:
                        require not msg.value
                        if msg.sender == owner:
                            idx = 1
                            while idx <= stor5:
                                mem[0] = idx
                                mem[32] = 3
                                require ext_code.size(tokenList[idx])
                                staticcall tokenList[idx].0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _734 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_734] == mem[_734 + 31 len 1]
                                if not mem[_734 + 31 len 1]:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(tokenList[idx])
                                    staticcall tokenList[idx].0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _872 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _892 = mem[_872]
                                    if mem[_872]:
                                        mem[mem[64] + 4] = owner
                                        mem[mem[64] + 36] = _892
                                        require ext_code.size(tokenList[idx])
                                        call tokenList[idx].0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, _892
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _948 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_948] == bool(mem[_948])
                                else:
                                    if bool(bool(mem[_734 + 31 len 1] < 78)) or bool(bool(mem[_734 + 31 len 1] < 32)):
                                        if False and 10^mem[_734 + 31 len 1] > 0:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(tokenList[idx])
                                        staticcall tokenList[idx].0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _918 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _939 = mem[_918]
                                        if mem[_918]:
                                            mem[mem[64] + 4] = owner
                                            mem[mem[64] + 36] = _939
                                            require ext_code.size(tokenList[idx])
                                            call tokenList[idx].0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, _939
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _991 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_991] == bool(mem[_991])
                                    else:
                                        t = 10
                                        u = 1
                                        s = mem[_734 + 31 len 1]
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
                                        _1100 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1108 = mem[_1100]
                                        if mem[_1100]:
                                            mem[mem[64] + 4] = owner
                                            mem[mem[64] + 36] = _1108
                                            require ext_code.size(tokenList[idx])
                                            call tokenList[idx].0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, _1108
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1129 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_1129] == bool(mem[_1129])
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                        else:
                            if creatorAddress != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if msg.sender == owner:
                                idx = 1
                                while idx <= stor5:
                                    mem[0] = idx
                                    mem[32] = 3
                                    require ext_code.size(tokenList[idx])
                                    staticcall tokenList[idx].0x313ce567 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _735 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_735] == mem[_735 + 31 len 1]
                                    if not mem[_735 + 31 len 1]:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(tokenList[idx])
                                        staticcall tokenList[idx].0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _873 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _893 = mem[_873]
                                        if mem[_873]:
                                            mem[mem[64] + 4] = owner
                                            mem[mem[64] + 36] = _893
                                            require ext_code.size(tokenList[idx])
                                            call tokenList[idx].0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, _893
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _949 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_949] == bool(mem[_949])
                                    else:
                                        if bool(bool(mem[_735 + 31 len 1] < 78)) or bool(bool(mem[_735 + 31 len 1] < 32)):
                                            if False and 10^mem[_735 + 31 len 1] > 0:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(tokenList[idx])
                                            staticcall tokenList[idx].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _920 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _942 = mem[_920]
                                            if mem[_920]:
                                                mem[mem[64] + 4] = owner
                                                mem[mem[64] + 36] = _942
                                                require ext_code.size(tokenList[idx])
                                                call tokenList[idx].0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args owner, _942
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _992 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_992] == bool(mem[_992])
                                        else:
                                            t = 10
                                            u = 1
                                            s = mem[_735 + 31 len 1]
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
                                            _1101 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _1109 = mem[_1101]
                                            if mem[_1101]:
                                                mem[mem[64] + 4] = owner
                                                mem[mem[64] + 36] = _1109
                                                require ext_code.size(tokenList[idx])
                                                call tokenList[idx].0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args owner, _1109
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _1130 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_1130] == bool(mem[_1130])
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    continue 
                            else:
                                if creatorAddress != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                idx = 1
                                while idx <= stor5:
                                    mem[0] = idx
                                    mem[32] = 3
                                    require ext_code.size(tokenList[idx])
                                    staticcall tokenList[idx].0x313ce567 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _736 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_736] == mem[_736 + 31 len 1]
                                    if not mem[_736 + 31 len 1]:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(tokenList[idx])
                                        staticcall tokenList[idx].0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _874 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _894 = mem[_874]
                                        if mem[_874]:
                                            mem[mem[64] + 4] = owner
                                            mem[mem[64] + 36] = _894
                                            require ext_code.size(tokenList[idx])
                                            call tokenList[idx].0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, _894
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _950 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_950] == bool(mem[_950])
                                    else:
                                        if bool(bool(mem[_736 + 31 len 1] < 78)) or bool(bool(mem[_736 + 31 len 1] < 32)):
                                            if False and 10^mem[_736 + 31 len 1] > 0:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(tokenList[idx])
                                            staticcall tokenList[idx].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _922 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _945 = mem[_922]
                                            if mem[_922]:
                                                mem[mem[64] + 4] = owner
                                                mem[mem[64] + 36] = _945
                                                require ext_code.size(tokenList[idx])
                                                call tokenList[idx].0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args owner, _945
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _993 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_993] == bool(mem[_993])
                                        else:
                                            t = 10
                                            u = 1
                                            s = mem[_736 + 31 len 1]
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
                                            _1102 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _1110 = mem[_1102]
                                            if mem[_1102]:
                                                mem[mem[64] + 4] = owner
                                                mem[mem[64] + 36] = _1110
                                                require ext_code.size(tokenList[idx])
                                                call tokenList[idx].0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args owner, _1110
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _1131 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_1131] == bool(mem[_1131])
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    continue 
                        if owner != msg.sender:
                            if creatorAddress != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                        if eth.balance(this.address):
                            call owner with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            if uint32(call.func_hash) >> 224 != unknown_0x30a01c4e(?????):
                if unknown_0x4229dbe3(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return eth.balance(this.address)
                require unknown_0x4b8eb24c(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    if creatorAddress != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                if not sub_ba27f50b[address(arg1)]:
                    if stor5 > -2:
                        revert with 'NH{q', 17
                    stor5++
                    sub_ba27f50b[address(arg1)] = stor5
                    tokenList[stor5] = address(arg1)
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
                if creatorAddress != msg.sender:
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
                        args owner, arg2
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
                            args owner, ext_call.return_data[0]
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
                            args owner, arg2 * 10^uint8(ext_call.return_data[0])
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
                                args owner, ext_call.return_data[0]
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
                            args owner, arg2 * s * t
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
                                args owner, ext_call.return_data[0]
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
                        return bool(stor2[arg1])
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
                        if creatorAddress != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                    stor12 = address(arg2)
                    stor13 = address(arg3)
                    require ext_code.size(address(arg2))
                    call address(arg2).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), test266151307()
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 0 >= stor6.length:
                        revert with 'NH{q', 50
                    address(stor6.field_0) = address(arg2)
                    if 1 >= stor6.length:
                        revert with 'NH{q', 50
                    address(stor6.field_256) = address(arg3)
                    if 0 >= stor7.length:
                        revert with 'NH{q', 50
                    address(stor7.field_0) = address(arg3)
                    if 1 >= stor7.length:
                        revert with 'NH{q', 50
                    address(stor7.field_256) = address(arg2)
                    if not sub_ba27f50b[address(arg2)]:
                        if stor5 > -2:
                            revert with 'NH{q', 17
                        stor5++
                        sub_ba27f50b[address(arg2)] = stor5
                        tokenList[stor5] = address(arg2)
                    if not sub_ba27f50b[address(arg3)]:
                        if stor5 > -2:
                            revert with 'NH{q', 17
                        stor5++
                        sub_ba27f50b[address(arg3)] = stor5
                        tokenList[stor5] = address(arg3)
                    stor8 = address(arg1)
                    stor9 = address(arg2)
                    stor10 = address(arg3)
                    stor11 = address(arg4)
                    stor15 = uint8(bool(arg5))
            else:
                if unknown_0xdad69c20(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        if creatorAddress != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                    stor2[address(arg1)] = 0
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xe24be30d(?????):
                        require unknown_0xe551b351(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 96
                        require arg1 == address(arg1)
                        require arg2 == address(arg2)
                        if owner != msg.sender:
                            if creatorAddress != msg.sender:
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
                                    if stor5 > -2:
                                        revert with 'NH{q', 17
                                    stor5++
                                    sub_ba27f50b[address(arg1)] = stor5
                                    tokenList[stor5] = address(arg1)
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
                                        if stor5 > -2:
                                            revert with 'NH{q', 17
                                        stor5++
                                        sub_ba27f50b[address(arg1)] = stor5
                                        tokenList[stor5] = address(arg1)
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
                                        if stor5 > -2:
                                            revert with 'NH{q', 17
                                        stor5++
                                        sub_ba27f50b[address(arg1)] = stor5
                                        tokenList[stor5] = address(arg1)
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
                                            if stor5 > -2:
                                                revert with 'NH{q', 17
                                            stor5++
                                            sub_ba27f50b[address(arg1)] = stor5
                                            tokenList[stor5] = address(arg1)
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
                                        if stor5 > -2:
                                            revert with 'NH{q', 17
                                        stor5++
                                        sub_ba27f50b[address(arg1)] = stor5
                                        tokenList[stor5] = address(arg1)
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
                                            if stor5 > -2:
                                                revert with 'NH{q', 17
                                            stor5++
                                            sub_ba27f50b[address(arg1)] = stor5
                                            tokenList[stor5] = address(arg1)
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 96
                        require arg3 == address(arg3)
                        if not stor2[msg.sender]:
                            if owner != msg.sender:
                                if creatorAddress != msg.sender:
                                    revert with 0, 'white only'
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if ext_call.return_data[18 len 14] <= 0:
                            revert with 0, 'empty pool'
                        if ext_call.return_data[50 len 14] <= 0:
                            revert with 0, 'empty pool'
                        require ext_code.size(stor12)
                        staticcall stor12.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg1 > ext_call.return_data[0]:
                            revert with 0, 'balance not enough'
                        if stor11 != address(arg3):
                            revert with 0, 'invalid task'
                        if not stor15:
                            require ext_code.size(stor13)
                            staticcall stor13.0x70a08231 with:
                                    gas gas_remaining wei
                                   args owner
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = 0
                            s = 0
                            t = (4 * ceil32(return_data.size)) + 324
                            while idx < stor6.length:
                                mem[t] = stor6[s].field_0
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            require ext_code.size(stor8)
                            call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg1, arg2, Array(len=stor6.length, data=mem[(4 * ceil32(return_data.size)) + 324 len 32 * stor6.length]), owner, stor14
                        else:
                            idx = 0
                            s = 0
                            t = (2 * ceil32(return_data.size)) + 324
                            while idx < stor6.length:
                                mem[t] = stor6[s].field_0
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            require ext_code.size(stor8)
                            call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg1 / 100000, arg2 / 100000, Array(len=stor6.length, data=mem[(2 * ceil32(return_data.size)) + 324 len 32 * stor6.length]), address(this.address), stor14
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stor13)
                            call stor13.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor8, test266151307()
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(stor13)
                            staticcall stor13.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = 0
                            s = 0
                            t = (6 * ceil32(return_data.size)) + 324
                            while idx < stor7.length:
                                mem[t] = stor7[s].field_0
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            require ext_code.size(stor8)
                            call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, owner, stor14, stor7.length, mem[(6 * ceil32(return_data.size)) + 324 len 32 * stor7.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg1 < arg1 / 100000:
                                revert with 'NH{q', 17
                            require ext_code.size(stor13)
                            staticcall stor13.0x70a08231 with:
                                    gas gas_remaining wei
                                   args owner
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = 0
                            s = 0
                            t = (7 * ceil32(return_data.size)) + 324
                            while idx < stor6.length:
                                mem[t] = stor6[s].field_0
                                idx = idx + 1
                                s = s + 1
                                t = t + 32
                                continue 
                            require ext_code.size(stor8)
                            call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg1 - (arg1 / 100000), arg2, Array(len=stor6.length, data=mem[(7 * ceil32(return_data.size)) + 324 len 32 * stor6.length]), owner, stor14
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor13)
                        staticcall stor13.0x70a08231 with:
                                gas gas_remaining wei
                               args owner
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 0 < arg2:
                            revert with 0, 'output not enough'
}



}
