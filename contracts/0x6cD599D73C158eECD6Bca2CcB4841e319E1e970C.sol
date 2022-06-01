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

function sub_f13b5836(?) {
    require calldata.size - 4 >= 128
    require arg3 == address(arg3)
    mem[32] = 2
    if stor2[msg.sender]:
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
            revert with 0, 'empty pool'
        if ext_call.return_data[50 len 14] <= 0:
            revert with 0, 'empty pool'
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 > ext_call.return_data[0]:
            revert with 0, 'balance not enough'
        if stor11 != address(arg3):
            revert with 0, 'invalid task'
        if not stor15:
            mem[(2 * ceil32(return_data.size)) + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 100] = arg2
            mem[(2 * ceil32(return_data.size)) + 132] = 64
            mem[(2 * ceil32(return_data.size)) + 164] = stor6.length
            mem[0] = 6
            idx = 0
            s = 0
            t = (2 * ceil32(return_data.size)) + 196
            while idx < stor6.length:
                mem[t] = stor6[s].field_0
                idx = idx + 1
                s = s + 1
                t = t + 32
                continue 
            require ext_code.size(stor8)
            staticcall stor8.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg2, Array(len=stor6.length, data=mem[(2 * ceil32(return_data.size)) + 196 len 32 * stor6.length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _367 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32
            require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _373 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
                revert with 'NH{q', 65
            if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97 > test266151307():
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97
            mem[(4 * ceil32(return_data.size)) + 96] = _373
            require return_data.size >= _367 + (32 * _373) + 32
            mem[(4 * ceil32(return_data.size)) + 128 len 32 * _373] = mem[(2 * ceil32(return_data.size)) + _367 + 128 len 32 * _373]
            if 0 >= _373:
                revert with 'NH{q', 50
            _640 = mem[(4 * ceil32(return_data.size)) + 128]
            if mem[(4 * ceil32(return_data.size)) + 128] > arg1:
                revert with 0, 'input too large'
            mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg2
            mem[mem[64] + 36] = _640
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = stor6.length
            mem[0] = 6
            idx = 0
            s = 0
            t = mem[64] + 196
            while idx < stor6.length:
                mem[t] = stor6[s].field_0
                idx = idx + 1
                s = s + 1
                t = t + 32
                continue 
            mem[mem[64] + 100] = owner
            mem[mem[64] + 132] = stor14
            require ext_code.size(stor8)
            call stor8.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, _640, Array(len=stor6.length, data=mem[mem[64] + 196 len 32 * stor6.length]), owner, stor14
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _874 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _880 = mem[_874]
            require mem[_874] <= test266151307()
            require _874 + mem[_874] + 31 < _874 + return_data.size
            _886 = mem[_874 + mem[_874]]
            if mem[_874 + mem[_874]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(32 * mem[_874 + mem[_874]]) + 1 < 0 or _874 + ceil32(return_data.size) + ceil32(32 * mem[_874 + mem[_874]]) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _874 + ceil32(return_data.size) + ceil32(32 * mem[_874 + mem[_874]]) + 1
            mem[_874 + ceil32(return_data.size)] = _886
            require return_data.size >= _880 + (32 * _886) + 32
            mem[_874 + ceil32(return_data.size) + 32 len 32 * _886] = mem[_874 + _880 + 32 len 32 * _886]
            idx = 1
            s = _640
            while idx <= arg4:
                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg2
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = stor6.length
                mem[0] = 6
                s = 0
                t = sha3(6)
                u = mem[64] + 100
                while s < stor6.length:
                    mem[u] = stor[t]
                    s = s + 1
                    t = t + 1
                    u = u + 32
                    continue 
                require ext_code.size(stor8)
                staticcall stor8.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=stor6.length, data=mem[mem[64] + 100 len 32 * stor6.length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1405 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1411 = mem[_1405]
                require mem[_1405] <= test266151307()
                require _1405 + mem[_1405] + 31 < _1405 + return_data.size
                _1414 = mem[_1405 + mem[_1405]]
                if mem[_1405 + mem[_1405]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(32 * mem[_1405 + mem[_1405]]) + 1 < 0 or _1405 + ceil32(return_data.size) + ceil32(32 * mem[_1405 + mem[_1405]]) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _1405 + ceil32(return_data.size) + ceil32(32 * mem[_1405 + mem[_1405]]) + 1
                mem[_1405 + ceil32(return_data.size)] = _1414
                require return_data.size >= _1411 + (32 * _1414) + 32
                t = _1405 + _1411 + 32
                u = _1405 + ceil32(return_data.size) + 32
                s = 0
                while s < _1414:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if 0 >= _1414:
                    revert with 'NH{q', 50
                _1534 = mem[_1405 + ceil32(return_data.size) + 32]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1546 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if _1534 > mem[_1546]:
                mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg2
                mem[mem[64] + 36] = _1534
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = stor6.length
                mem[0] = 6
                s = 0
                t = sha3(6)
                u = mem[64] + 196
                while s < stor6.length:
                    mem[u] = stor[t]
                    s = s + 1
                    t = t + 1
                    u = u + 32
                    continue 
                mem[mem[64] + 100] = owner
                mem[mem[64] + 132] = stor14
                require ext_code.size(stor8)
                call stor8.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, _1534, Array(len=stor6.length, data=mem[mem[64] + 196 len 32 * stor6.length]), owner, stor14
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1642 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1648 = mem[_1642]
                require mem[_1642] <= test266151307()
                require _1642 + mem[_1642] + 31 < _1642 + return_data.size
                _1654 = mem[_1642 + mem[_1642]]
                if mem[_1642 + mem[_1642]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(32 * mem[_1642 + mem[_1642]]) + 1 < 0 or _1642 + ceil32(return_data.size) + ceil32(32 * mem[_1642 + mem[_1642]]) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _1642 + ceil32(return_data.size) + ceil32(32 * mem[_1642 + mem[_1642]]) + 1
                mem[_1642 + ceil32(return_data.size)] = _1654
                require return_data.size >= _1648 + (32 * _1654) + 32
                t = _1642 + _1648 + 32
                u = _1642 + ceil32(return_data.size) + 32
                s = 0
                while s < _1654:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1534
                continue 
        else:
            mem[(2 * ceil32(return_data.size)) + 164] = 160
            mem[(2 * ceil32(return_data.size)) + 260] = stor6.length
            idx = 0
            s = 0
            t = (2 * ceil32(return_data.size)) + 292
            while idx < stor6.length:
                mem[t] = stor6[s].field_0
                idx = idx + 1
                s = s + 1
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 196] = this.address
            mem[(2 * ceil32(return_data.size)) + 228] = stor14
            require ext_code.size(stor8)
            call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg1 / 100000, arg2 / 100000, Array(len=stor6.length, data=mem[(2 * ceil32(return_data.size)) + 292 len 32 * stor6.length]), address(this.address), stor14
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 100] = stor8
            mem[(2 * ceil32(return_data.size)) + 132] = test266151307()
            require ext_code.size(stor13)
            call stor13.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor8, test266151307()
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(stor13)
            staticcall stor13.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(6 * ceil32(return_data.size)) + 260] = stor7.length
            idx = 0
            s = 0
            t = (6 * ceil32(return_data.size)) + 292
            while idx < stor7.length:
                mem[t] = stor7[s].field_0
                idx = idx + 1
                s = s + 1
                t = t + 32
                continue 
            mem[(6 * ceil32(return_data.size)) + 196] = owner
            mem[(6 * ceil32(return_data.size)) + 228] = stor14
            require ext_code.size(stor8)
            call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, owner, stor14, stor7.length, mem[(6 * ceil32(return_data.size)) + 292 len 32 * stor7.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg1 < arg1 / 100000:
                revert with 'NH{q', 17
            mem[(6 * ceil32(return_data.size)) + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 100] = arg2
            mem[(6 * ceil32(return_data.size)) + 132] = 64
            mem[(6 * ceil32(return_data.size)) + 164] = stor6.length
            mem[0] = 6
            idx = 0
            s = 0
            t = (6 * ceil32(return_data.size)) + 196
            while idx < stor6.length:
                mem[t] = stor6[s].field_0
                idx = idx + 1
                s = s + 1
                t = t + 32
                continue 
            require ext_code.size(stor8)
            staticcall stor8.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg2, Array(len=stor6.length, data=mem[(6 * ceil32(return_data.size)) + 196 len 32 * stor6.length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (7 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _881 = mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32
            require mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 127 < (6 * ceil32(return_data.size)) + return_data.size + 96
            _887 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
            if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
                revert with 'NH{q', 65
            if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97 > test266151307():
                revert with 'NH{q', 65
            mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97
            mem[(7 * ceil32(return_data.size)) + 96] = _887
            require return_data.size >= _881 + (32 * _887) + 32
            mem[(7 * ceil32(return_data.size)) + 128 len 32 * _887] = mem[(6 * ceil32(return_data.size)) + _881 + 128 len 32 * _887]
            if 0 >= _887:
                revert with 'NH{q', 50
            _1081 = mem[(7 * ceil32(return_data.size)) + 128]
            if mem[(7 * ceil32(return_data.size)) + 128] > arg1 - (arg1 / 100000):
                revert with 0, 'input too large'
            mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg2
            mem[mem[64] + 36] = _1081
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = stor6.length
            mem[0] = 6
            idx = 0
            s = 0
            t = mem[64] + 196
            while idx < stor6.length:
                mem[t] = stor6[s].field_0
                idx = idx + 1
                s = s + 1
                t = t + 32
                continue 
            mem[mem[64] + 100] = owner
            mem[mem[64] + 132] = stor14
            require ext_code.size(stor8)
            call stor8.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, _1081, Array(len=stor6.length, data=mem[mem[64] + 196 len 32 * stor6.length]), owner, stor14
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1255 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1259 = mem[_1255]
            require mem[_1255] <= test266151307()
            require _1255 + mem[_1255] + 31 < _1255 + return_data.size
            _1265 = mem[_1255 + mem[_1255]]
            if mem[_1255 + mem[_1255]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(32 * mem[_1255 + mem[_1255]]) + 1 < 0 or _1255 + ceil32(return_data.size) + ceil32(32 * mem[_1255 + mem[_1255]]) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _1255 + ceil32(return_data.size) + ceil32(32 * mem[_1255 + mem[_1255]]) + 1
            mem[_1255 + ceil32(return_data.size)] = _1265
            require return_data.size >= _1259 + (32 * _1265) + 32
            mem[_1255 + ceil32(return_data.size) + 32 len 32 * _1265] = mem[_1255 + _1259 + 32 len 32 * _1265]
            idx = 1
            s = _1081
            while idx <= arg4:
                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg2
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = stor6.length
                mem[0] = 6
                s = 0
                t = sha3(6)
                u = mem[64] + 100
                while s < stor6.length:
                    mem[u] = stor[t]
                    s = s + 1
                    t = t + 1
                    u = u + 32
                    continue 
                require ext_code.size(stor8)
                staticcall stor8.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=stor6.length, data=mem[mem[64] + 100 len 32 * stor6.length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1643 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1649 = mem[_1643]
                require mem[_1643] <= test266151307()
                require _1643 + mem[_1643] + 31 < _1643 + return_data.size
                _1655 = mem[_1643 + mem[_1643]]
                if mem[_1643 + mem[_1643]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(32 * mem[_1643 + mem[_1643]]) + 1 < 0 or _1643 + ceil32(return_data.size) + ceil32(32 * mem[_1643 + mem[_1643]]) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _1643 + ceil32(return_data.size) + ceil32(32 * mem[_1643 + mem[_1643]]) + 1
                mem[_1643 + ceil32(return_data.size)] = _1655
                require return_data.size >= _1649 + (32 * _1655) + 32
                t = _1643 + _1649 + 32
                u = _1643 + ceil32(return_data.size) + 32
                s = 0
                while s < _1655:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if 0 >= _1655:
                    revert with 'NH{q', 50
                _1723 = mem[_1643 + ceil32(return_data.size) + 32]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor12)
                staticcall stor12.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1732 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if _1723 > mem[_1732]:
                mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg2
                mem[mem[64] + 36] = _1723
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = stor6.length
                mem[0] = 6
                s = 0
                t = sha3(6)
                u = mem[64] + 196
                while s < stor6.length:
                    mem[u] = stor[t]
                    s = s + 1
                    t = t + 1
                    u = u + 32
                    continue 
                mem[mem[64] + 100] = owner
                mem[mem[64] + 132] = stor14
                require ext_code.size(stor8)
                call stor8.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, _1723, Array(len=stor6.length, data=mem[mem[64] + 196 len 32 * stor6.length]), owner, stor14
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1765 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1768 = mem[_1765]
                require mem[_1765] <= test266151307()
                require _1765 + mem[_1765] + 31 < _1765 + return_data.size
                _1771 = mem[_1765 + mem[_1765]]
                if mem[_1765 + mem[_1765]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(32 * mem[_1765 + mem[_1765]]) + 1 < 0 or _1765 + ceil32(return_data.size) + ceil32(32 * mem[_1765 + mem[_1765]]) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _1765 + ceil32(return_data.size) + ceil32(32 * mem[_1765 + mem[_1765]]) + 1
                mem[_1765 + ceil32(return_data.size)] = _1771
                require return_data.size >= _1768 + (32 * _1771) + 32
                t = _1765 + _1768 + 32
                u = _1765 + ceil32(return_data.size) + 32
                s = 0
                while s < _1771:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _1723
                continue 
    else:
        if msg.sender == owner:
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
                revert with 0, 'empty pool'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'empty pool'
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 > ext_call.return_data[0]:
                revert with 0, 'balance not enough'
            if stor11 != address(arg3):
                revert with 0, 'invalid task'
            if not stor15:
                mem[(2 * ceil32(return_data.size)) + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 100] = arg2
                mem[(2 * ceil32(return_data.size)) + 132] = 64
                mem[(2 * ceil32(return_data.size)) + 164] = stor6.length
                mem[0] = 6
                idx = 0
                s = 0
                t = (2 * ceil32(return_data.size)) + 196
                while idx < stor6.length:
                    mem[t] = stor6[s].field_0
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                require ext_code.size(stor8)
                staticcall stor8.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=stor6.length, data=mem[(2 * ceil32(return_data.size)) + 196 len 32 * stor6.length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                _369 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _375 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97
                mem[(4 * ceil32(return_data.size)) + 96] = _375
                require return_data.size >= _369 + (32 * _375) + 32
                mem[(4 * ceil32(return_data.size)) + 128 len 32 * _375] = mem[(2 * ceil32(return_data.size)) + _369 + 128 len 32 * _375]
                if 0 >= _375:
                    revert with 'NH{q', 50
                _642 = mem[(4 * ceil32(return_data.size)) + 128]
                if mem[(4 * ceil32(return_data.size)) + 128] > arg1:
                    revert with 0, 'input too large'
                mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg2
                mem[mem[64] + 36] = _642
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = stor6.length
                mem[0] = 6
                idx = 0
                s = 0
                t = mem[64] + 196
                while idx < stor6.length:
                    mem[t] = stor6[s].field_0
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = owner
                mem[mem[64] + 132] = stor14
                require ext_code.size(stor8)
                call stor8.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, _642, Array(len=stor6.length, data=mem[mem[64] + 196 len 32 * stor6.length]), owner, stor14
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _876 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _882 = mem[_876]
                require mem[_876] <= test266151307()
                require _876 + mem[_876] + 31 < _876 + return_data.size
                _888 = mem[_876 + mem[_876]]
                if mem[_876 + mem[_876]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(32 * mem[_876 + mem[_876]]) + 1 < 0 or _876 + ceil32(return_data.size) + ceil32(32 * mem[_876 + mem[_876]]) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _876 + ceil32(return_data.size) + ceil32(32 * mem[_876 + mem[_876]]) + 1
                mem[_876 + ceil32(return_data.size)] = _888
                require return_data.size >= _882 + (32 * _888) + 32
                mem[_876 + ceil32(return_data.size) + 32 len 32 * _888] = mem[_876 + _882 + 32 len 32 * _888]
                idx = 1
                s = _642
                while idx <= arg4:
                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = stor6.length
                    mem[0] = 6
                    s = 0
                    t = sha3(6)
                    u = mem[64] + 100
                    while s < stor6.length:
                        mem[u] = stor[t]
                        s = s + 1
                        t = t + 1
                        u = u + 32
                        continue 
                    require ext_code.size(stor8)
                    staticcall stor8.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg2, Array(len=stor6.length, data=mem[mem[64] + 100 len 32 * stor6.length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1406 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1412 = mem[_1406]
                    require mem[_1406] <= test266151307()
                    require _1406 + mem[_1406] + 31 < _1406 + return_data.size
                    _1415 = mem[_1406 + mem[_1406]]
                    if mem[_1406 + mem[_1406]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(32 * mem[_1406 + mem[_1406]]) + 1 < 0 or _1406 + ceil32(return_data.size) + ceil32(32 * mem[_1406 + mem[_1406]]) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _1406 + ceil32(return_data.size) + ceil32(32 * mem[_1406 + mem[_1406]]) + 1
                    mem[_1406 + ceil32(return_data.size)] = _1415
                    require return_data.size >= _1412 + (32 * _1415) + 32
                    t = _1406 + _1412 + 32
                    u = _1406 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _1415:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if 0 >= _1415:
                        revert with 'NH{q', 50
                    _1538 = mem[_1406 + ceil32(return_data.size) + 32]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1547 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if _1538 > mem[_1547]:
                    mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = _1538
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = stor6.length
                    mem[0] = 6
                    s = 0
                    t = sha3(6)
                    u = mem[64] + 196
                    while s < stor6.length:
                        mem[u] = stor[t]
                        s = s + 1
                        t = t + 1
                        u = u + 32
                        continue 
                    mem[mem[64] + 100] = owner
                    mem[mem[64] + 132] = stor14
                    require ext_code.size(stor8)
                    call stor8.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1538, Array(len=stor6.length, data=mem[mem[64] + 196 len 32 * stor6.length]), owner, stor14
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1644 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1650 = mem[_1644]
                    require mem[_1644] <= test266151307()
                    require _1644 + mem[_1644] + 31 < _1644 + return_data.size
                    _1656 = mem[_1644 + mem[_1644]]
                    if mem[_1644 + mem[_1644]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(32 * mem[_1644 + mem[_1644]]) + 1 < 0 or _1644 + ceil32(return_data.size) + ceil32(32 * mem[_1644 + mem[_1644]]) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _1644 + ceil32(return_data.size) + ceil32(32 * mem[_1644 + mem[_1644]]) + 1
                    mem[_1644 + ceil32(return_data.size)] = _1656
                    require return_data.size >= _1650 + (32 * _1656) + 32
                    t = _1644 + _1650 + 32
                    u = _1644 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _1656:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _1538
                    continue 
            else:
                mem[(2 * ceil32(return_data.size)) + 164] = 160
                mem[(2 * ceil32(return_data.size)) + 260] = stor6.length
                idx = 0
                s = 0
                t = (2 * ceil32(return_data.size)) + 292
                while idx < stor6.length:
                    mem[t] = stor6[s].field_0
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 196] = this.address
                mem[(2 * ceil32(return_data.size)) + 228] = stor14
                require ext_code.size(stor8)
                call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg1 / 100000, arg2 / 100000, Array(len=stor6.length, data=mem[(2 * ceil32(return_data.size)) + 292 len 32 * stor6.length]), address(this.address), stor14
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 100] = stor8
                mem[(2 * ceil32(return_data.size)) + 132] = test266151307()
                require ext_code.size(stor13)
                call stor13.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor8, test266151307()
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(stor13)
                staticcall stor13.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(6 * ceil32(return_data.size)) + 260] = stor7.length
                idx = 0
                s = 0
                t = (6 * ceil32(return_data.size)) + 292
                while idx < stor7.length:
                    mem[t] = stor7[s].field_0
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + 196] = owner
                mem[(6 * ceil32(return_data.size)) + 228] = stor14
                require ext_code.size(stor8)
                call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, owner, stor14, stor7.length, mem[(6 * ceil32(return_data.size)) + 292 len 32 * stor7.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg1 < arg1 / 100000:
                    revert with 'NH{q', 17
                mem[(6 * ceil32(return_data.size)) + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 100] = arg2
                mem[(6 * ceil32(return_data.size)) + 132] = 64
                mem[(6 * ceil32(return_data.size)) + 164] = stor6.length
                mem[0] = 6
                idx = 0
                s = 0
                t = (6 * ceil32(return_data.size)) + 196
                while idx < stor6.length:
                    mem[t] = stor6[s].field_0
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                require ext_code.size(stor8)
                staticcall stor8.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=stor6.length, data=mem[(6 * ceil32(return_data.size)) + 196 len 32 * stor6.length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                _883 = mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32
                require mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 127 < (6 * ceil32(return_data.size)) + return_data.size + 96
                _889 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
                if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97
                mem[(7 * ceil32(return_data.size)) + 96] = _889
                require return_data.size >= _883 + (32 * _889) + 32
                mem[(7 * ceil32(return_data.size)) + 128 len 32 * _889] = mem[(6 * ceil32(return_data.size)) + _883 + 128 len 32 * _889]
                if 0 >= _889:
                    revert with 'NH{q', 50
                _1082 = mem[(7 * ceil32(return_data.size)) + 128]
                if mem[(7 * ceil32(return_data.size)) + 128] > arg1 - (arg1 / 100000):
                    revert with 0, 'input too large'
                mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg2
                mem[mem[64] + 36] = _1082
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = stor6.length
                mem[0] = 6
                idx = 0
                s = 0
                t = mem[64] + 196
                while idx < stor6.length:
                    mem[t] = stor6[s].field_0
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = owner
                mem[mem[64] + 132] = stor14
                require ext_code.size(stor8)
                call stor8.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, _1082, Array(len=stor6.length, data=mem[mem[64] + 196 len 32 * stor6.length]), owner, stor14
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1256 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1261 = mem[_1256]
                require mem[_1256] <= test266151307()
                require _1256 + mem[_1256] + 31 < _1256 + return_data.size
                _1267 = mem[_1256 + mem[_1256]]
                if mem[_1256 + mem[_1256]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(32 * mem[_1256 + mem[_1256]]) + 1 < 0 or _1256 + ceil32(return_data.size) + ceil32(32 * mem[_1256 + mem[_1256]]) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _1256 + ceil32(return_data.size) + ceil32(32 * mem[_1256 + mem[_1256]]) + 1
                mem[_1256 + ceil32(return_data.size)] = _1267
                require return_data.size >= _1261 + (32 * _1267) + 32
                mem[_1256 + ceil32(return_data.size) + 32 len 32 * _1267] = mem[_1256 + _1261 + 32 len 32 * _1267]
                idx = 1
                s = _1082
                while idx <= arg4:
                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = stor6.length
                    mem[0] = 6
                    s = 0
                    t = sha3(6)
                    u = mem[64] + 100
                    while s < stor6.length:
                        mem[u] = stor[t]
                        s = s + 1
                        t = t + 1
                        u = u + 32
                        continue 
                    require ext_code.size(stor8)
                    staticcall stor8.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg2, Array(len=stor6.length, data=mem[mem[64] + 100 len 32 * stor6.length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1645 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1651 = mem[_1645]
                    require mem[_1645] <= test266151307()
                    require _1645 + mem[_1645] + 31 < _1645 + return_data.size
                    _1657 = mem[_1645 + mem[_1645]]
                    if mem[_1645 + mem[_1645]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(32 * mem[_1645 + mem[_1645]]) + 1 < 0 or _1645 + ceil32(return_data.size) + ceil32(32 * mem[_1645 + mem[_1645]]) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _1645 + ceil32(return_data.size) + ceil32(32 * mem[_1645 + mem[_1645]]) + 1
                    mem[_1645 + ceil32(return_data.size)] = _1657
                    require return_data.size >= _1651 + (32 * _1657) + 32
                    t = _1645 + _1651 + 32
                    u = _1645 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _1657:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if 0 >= _1657:
                        revert with 'NH{q', 50
                    _1726 = mem[_1645 + ceil32(return_data.size) + 32]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1733 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if _1726 > mem[_1733]:
                    mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = _1726
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = stor6.length
                    mem[0] = 6
                    s = 0
                    t = sha3(6)
                    u = mem[64] + 196
                    while s < stor6.length:
                        mem[u] = stor[t]
                        s = s + 1
                        t = t + 1
                        u = u + 32
                        continue 
                    mem[mem[64] + 100] = owner
                    mem[mem[64] + 132] = stor14
                    require ext_code.size(stor8)
                    call stor8.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1726, Array(len=stor6.length, data=mem[mem[64] + 196 len 32 * stor6.length]), owner, stor14
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1766 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1769 = mem[_1766]
                    require mem[_1766] <= test266151307()
                    require _1766 + mem[_1766] + 31 < _1766 + return_data.size
                    _1772 = mem[_1766 + mem[_1766]]
                    if mem[_1766 + mem[_1766]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(32 * mem[_1766 + mem[_1766]]) + 1 < 0 or _1766 + ceil32(return_data.size) + ceil32(32 * mem[_1766 + mem[_1766]]) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _1766 + ceil32(return_data.size) + ceil32(32 * mem[_1766 + mem[_1766]]) + 1
                    mem[_1766 + ceil32(return_data.size)] = _1772
                    require return_data.size >= _1769 + (32 * _1772) + 32
                    t = _1766 + _1769 + 32
                    u = _1766 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _1772:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _1726
                    continue 
        else:
            if creatorAddress != msg.sender:
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
                revert with 0, 'empty pool'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'empty pool'
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(stor12)
            staticcall stor12.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 > ext_call.return_data[0]:
                revert with 0, 'balance not enough'
            if stor11 != address(arg3):
                revert with 0, 'invalid task'
            if not stor15:
                mem[(2 * ceil32(return_data.size)) + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 100] = arg2
                mem[(2 * ceil32(return_data.size)) + 132] = 64
                mem[(2 * ceil32(return_data.size)) + 164] = stor6.length
                mem[0] = 6
                idx = 0
                s = 0
                t = (2 * ceil32(return_data.size)) + 196
                while idx < stor6.length:
                    mem[t] = stor6[s].field_0
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                require ext_code.size(stor8)
                staticcall stor8.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=stor6.length, data=mem[(2 * ceil32(return_data.size)) + 196 len 32 * stor6.length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                _371 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32
                require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                _377 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97
                mem[(4 * ceil32(return_data.size)) + 96] = _377
                require return_data.size >= _371 + (32 * _377) + 32
                mem[(4 * ceil32(return_data.size)) + 128 len 32 * _377] = mem[(2 * ceil32(return_data.size)) + _371 + 128 len 32 * _377]
                if 0 >= _377:
                    revert with 'NH{q', 50
                _644 = mem[(4 * ceil32(return_data.size)) + 128]
                if mem[(4 * ceil32(return_data.size)) + 128] > arg1:
                    revert with 0, 'input too large'
                mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg2
                mem[mem[64] + 36] = _644
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = stor6.length
                mem[0] = 6
                idx = 0
                s = 0
                t = mem[64] + 196
                while idx < stor6.length:
                    mem[t] = stor6[s].field_0
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = owner
                mem[mem[64] + 132] = stor14
                require ext_code.size(stor8)
                call stor8.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, _644, Array(len=stor6.length, data=mem[mem[64] + 196 len 32 * stor6.length]), owner, stor14
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _878 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _884 = mem[_878]
                require mem[_878] <= test266151307()
                require _878 + mem[_878] + 31 < _878 + return_data.size
                _890 = mem[_878 + mem[_878]]
                if mem[_878 + mem[_878]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(32 * mem[_878 + mem[_878]]) + 1 < 0 or _878 + ceil32(return_data.size) + ceil32(32 * mem[_878 + mem[_878]]) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _878 + ceil32(return_data.size) + ceil32(32 * mem[_878 + mem[_878]]) + 1
                mem[_878 + ceil32(return_data.size)] = _890
                require return_data.size >= _884 + (32 * _890) + 32
                mem[_878 + ceil32(return_data.size) + 32 len 32 * _890] = mem[_878 + _884 + 32 len 32 * _890]
                idx = 1
                s = _644
                while idx <= arg4:
                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = stor6.length
                    mem[0] = 6
                    s = 0
                    t = sha3(6)
                    u = mem[64] + 100
                    while s < stor6.length:
                        mem[u] = stor[t]
                        s = s + 1
                        t = t + 1
                        u = u + 32
                        continue 
                    require ext_code.size(stor8)
                    staticcall stor8.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg2, Array(len=stor6.length, data=mem[mem[64] + 100 len 32 * stor6.length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1407 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1413 = mem[_1407]
                    require mem[_1407] <= test266151307()
                    require _1407 + mem[_1407] + 31 < _1407 + return_data.size
                    _1416 = mem[_1407 + mem[_1407]]
                    if mem[_1407 + mem[_1407]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(32 * mem[_1407 + mem[_1407]]) + 1 < 0 or _1407 + ceil32(return_data.size) + ceil32(32 * mem[_1407 + mem[_1407]]) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _1407 + ceil32(return_data.size) + ceil32(32 * mem[_1407 + mem[_1407]]) + 1
                    mem[_1407 + ceil32(return_data.size)] = _1416
                    require return_data.size >= _1413 + (32 * _1416) + 32
                    t = _1407 + _1413 + 32
                    u = _1407 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _1416:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if 0 >= _1416:
                        revert with 'NH{q', 50
                    _1542 = mem[_1407 + ceil32(return_data.size) + 32]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1548 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if _1542 > mem[_1548]:
                    mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = _1542
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = stor6.length
                    mem[0] = 6
                    s = 0
                    t = sha3(6)
                    u = mem[64] + 196
                    while s < stor6.length:
                        mem[u] = stor[t]
                        s = s + 1
                        t = t + 1
                        u = u + 32
                        continue 
                    mem[mem[64] + 100] = owner
                    mem[mem[64] + 132] = stor14
                    require ext_code.size(stor8)
                    call stor8.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1542, Array(len=stor6.length, data=mem[mem[64] + 196 len 32 * stor6.length]), owner, stor14
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1646 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1652 = mem[_1646]
                    require mem[_1646] <= test266151307()
                    require _1646 + mem[_1646] + 31 < _1646 + return_data.size
                    _1658 = mem[_1646 + mem[_1646]]
                    if mem[_1646 + mem[_1646]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(32 * mem[_1646 + mem[_1646]]) + 1 < 0 or _1646 + ceil32(return_data.size) + ceil32(32 * mem[_1646 + mem[_1646]]) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _1646 + ceil32(return_data.size) + ceil32(32 * mem[_1646 + mem[_1646]]) + 1
                    mem[_1646 + ceil32(return_data.size)] = _1658
                    require return_data.size >= _1652 + (32 * _1658) + 32
                    t = _1646 + _1652 + 32
                    u = _1646 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _1658:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _1542
                    continue 
            else:
                mem[(2 * ceil32(return_data.size)) + 164] = 160
                mem[(2 * ceil32(return_data.size)) + 260] = stor6.length
                idx = 0
                s = 0
                t = (2 * ceil32(return_data.size)) + 292
                while idx < stor6.length:
                    mem[t] = stor6[s].field_0
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 196] = this.address
                mem[(2 * ceil32(return_data.size)) + 228] = stor14
                require ext_code.size(stor8)
                call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg1 / 100000, arg2 / 100000, Array(len=stor6.length, data=mem[(2 * ceil32(return_data.size)) + 292 len 32 * stor6.length]), address(this.address), stor14
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 100] = stor8
                mem[(2 * ceil32(return_data.size)) + 132] = test266151307()
                require ext_code.size(stor13)
                call stor13.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor8, test266151307()
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(stor13)
                staticcall stor13.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(6 * ceil32(return_data.size)) + 260] = stor7.length
                idx = 0
                s = 0
                t = (6 * ceil32(return_data.size)) + 292
                while idx < stor7.length:
                    mem[t] = stor7[s].field_0
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + 196] = owner
                mem[(6 * ceil32(return_data.size)) + 228] = stor14
                require ext_code.size(stor8)
                call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, owner, stor14, stor7.length, mem[(6 * ceil32(return_data.size)) + 292 len 32 * stor7.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg1 < arg1 / 100000:
                    revert with 'NH{q', 17
                mem[(6 * ceil32(return_data.size)) + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 100] = arg2
                mem[(6 * ceil32(return_data.size)) + 132] = 64
                mem[(6 * ceil32(return_data.size)) + 164] = stor6.length
                mem[0] = 6
                idx = 0
                s = 0
                t = (6 * ceil32(return_data.size)) + 196
                while idx < stor6.length:
                    mem[t] = stor6[s].field_0
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                require ext_code.size(stor8)
                staticcall stor8.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=stor6.length, data=mem[(6 * ceil32(return_data.size)) + 196 len 32 * stor6.length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                _885 = mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32
                require mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 127 < (6 * ceil32(return_data.size)) + return_data.size + 96
                _891 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
                if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97
                mem[(7 * ceil32(return_data.size)) + 96] = _891
                require return_data.size >= _885 + (32 * _891) + 32
                mem[(7 * ceil32(return_data.size)) + 128 len 32 * _891] = mem[(6 * ceil32(return_data.size)) + _885 + 128 len 32 * _891]
                if 0 >= _891:
                    revert with 'NH{q', 50
                _1083 = mem[(7 * ceil32(return_data.size)) + 128]
                if mem[(7 * ceil32(return_data.size)) + 128] > arg1 - (arg1 / 100000):
                    revert with 0, 'input too large'
                mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg2
                mem[mem[64] + 36] = _1083
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = stor6.length
                mem[0] = 6
                idx = 0
                s = 0
                t = mem[64] + 196
                while idx < stor6.length:
                    mem[t] = stor6[s].field_0
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = owner
                mem[mem[64] + 132] = stor14
                require ext_code.size(stor8)
                call stor8.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg2, _1083, Array(len=stor6.length, data=mem[mem[64] + 196 len 32 * stor6.length]), owner, stor14
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1257 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1263 = mem[_1257]
                require mem[_1257] <= test266151307()
                require _1257 + mem[_1257] + 31 < _1257 + return_data.size
                _1269 = mem[_1257 + mem[_1257]]
                if mem[_1257 + mem[_1257]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(32 * mem[_1257 + mem[_1257]]) + 1 < 0 or _1257 + ceil32(return_data.size) + ceil32(32 * mem[_1257 + mem[_1257]]) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _1257 + ceil32(return_data.size) + ceil32(32 * mem[_1257 + mem[_1257]]) + 1
                mem[_1257 + ceil32(return_data.size)] = _1269
                require return_data.size >= _1263 + (32 * _1269) + 32
                mem[_1257 + ceil32(return_data.size) + 32 len 32 * _1269] = mem[_1257 + _1263 + 32 len 32 * _1269]
                idx = 1
                s = _1083
                while idx <= arg4:
                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = stor6.length
                    mem[0] = 6
                    s = 0
                    t = sha3(6)
                    u = mem[64] + 100
                    while s < stor6.length:
                        mem[u] = stor[t]
                        s = s + 1
                        t = t + 1
                        u = u + 32
                        continue 
                    require ext_code.size(stor8)
                    staticcall stor8.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args arg2, Array(len=stor6.length, data=mem[mem[64] + 100 len 32 * stor6.length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1647 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1653 = mem[_1647]
                    require mem[_1647] <= test266151307()
                    require _1647 + mem[_1647] + 31 < _1647 + return_data.size
                    _1659 = mem[_1647 + mem[_1647]]
                    if mem[_1647 + mem[_1647]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(32 * mem[_1647 + mem[_1647]]) + 1 < 0 or _1647 + ceil32(return_data.size) + ceil32(32 * mem[_1647 + mem[_1647]]) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _1647 + ceil32(return_data.size) + ceil32(32 * mem[_1647 + mem[_1647]]) + 1
                    mem[_1647 + ceil32(return_data.size)] = _1659
                    require return_data.size >= _1653 + (32 * _1659) + 32
                    t = _1647 + _1653 + 32
                    u = _1647 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _1659:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if 0 >= _1659:
                        revert with 'NH{q', 50
                    _1729 = mem[_1647 + ceil32(return_data.size) + 32]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor12)
                    staticcall stor12.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1734 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if _1729 > mem[_1734]:
                    mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = _1729
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = stor6.length
                    mem[0] = 6
                    s = 0
                    t = sha3(6)
                    u = mem[64] + 196
                    while s < stor6.length:
                        mem[u] = stor[t]
                        s = s + 1
                        t = t + 1
                        u = u + 32
                        continue 
                    mem[mem[64] + 100] = owner
                    mem[mem[64] + 132] = stor14
                    require ext_code.size(stor8)
                    call stor8.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _1729, Array(len=stor6.length, data=mem[mem[64] + 196 len 32 * stor6.length]), owner, stor14
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1767 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1770 = mem[_1767]
                    require mem[_1767] <= test266151307()
                    require _1767 + mem[_1767] + 31 < _1767 + return_data.size
                    _1773 = mem[_1767 + mem[_1767]]
                    if mem[_1767 + mem[_1767]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(32 * mem[_1767 + mem[_1767]]) + 1 < 0 or _1767 + ceil32(return_data.size) + ceil32(32 * mem[_1767 + mem[_1767]]) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _1767 + ceil32(return_data.size) + ceil32(32 * mem[_1767 + mem[_1767]]) + 1
                    mem[_1767 + ceil32(return_data.size)] = _1773
                    require return_data.size >= _1770 + (32 * _1773) + 32
                    t = _1767 + _1770 + 32
                    u = _1767 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _1773:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _1729
                    continue 
}

function _fallback() payable {
    mem[64] = 128
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x946b5793(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x4229dbe3(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x853828b6(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x4229dbe3(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return eth.balance(this.address)
                    if uint32(call.func_hash) >> 224 != unknown_0x4b8eb24c(?????):
                        require unknown_0x6088e93a(?????) == uint32(call.func_hash) >> 224
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
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x853828b6(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0x8b09832d(?????):
                            require unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return owner
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
                                _1091 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1091] == mem[_1091 + 31 len 1]
                                if not mem[_1091 + 31 len 1]:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(tokenList[idx])
                                    staticcall tokenList[idx].0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1283 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1312 = mem[_1283]
                                    if mem[_1283]:
                                        mem[mem[64] + 4] = owner
                                        mem[mem[64] + 36] = _1312
                                        require ext_code.size(tokenList[idx])
                                        call tokenList[idx].0xa9059cbb with:
                                             gas gas_remaining wei
                                            args owner, _1312
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1377 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1377] == bool(mem[_1377])
                                else:
                                    if bool(bool(mem[_1091 + 31 len 1] < 78)) or bool(bool(mem[_1091 + 31 len 1] < 32)):
                                        if False and 10^mem[_1091 + 31 len 1] > 0:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(tokenList[idx])
                                        staticcall tokenList[idx].0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1341 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1365 = mem[_1341]
                                        if mem[_1341]:
                                            mem[mem[64] + 4] = owner
                                            mem[mem[64] + 36] = _1365
                                            require ext_code.size(tokenList[idx])
                                            call tokenList[idx].0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, _1365
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1432 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_1432] == bool(mem[_1432])
                                    else:
                                        t = 10
                                        u = 1
                                        s = mem[_1091 + 31 len 1]
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
                                        _1766 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1777 = mem[_1766]
                                        if mem[_1766]:
                                            mem[mem[64] + 4] = owner
                                            mem[mem[64] + 36] = _1777
                                            require ext_code.size(tokenList[idx])
                                            call tokenList[idx].0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, _1777
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1816 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_1816] == bool(mem[_1816])
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
                                    _1092 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1092] == mem[_1092 + 31 len 1]
                                    if not mem[_1092 + 31 len 1]:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(tokenList[idx])
                                        staticcall tokenList[idx].0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1284 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1313 = mem[_1284]
                                        if mem[_1284]:
                                            mem[mem[64] + 4] = owner
                                            mem[mem[64] + 36] = _1313
                                            require ext_code.size(tokenList[idx])
                                            call tokenList[idx].0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, _1313
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1378 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_1378] == bool(mem[_1378])
                                    else:
                                        if bool(bool(mem[_1092 + 31 len 1] < 78)) or bool(bool(mem[_1092 + 31 len 1] < 32)):
                                            if False and 10^mem[_1092 + 31 len 1] > 0:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(tokenList[idx])
                                            staticcall tokenList[idx].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1343 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _1368 = mem[_1343]
                                            if mem[_1343]:
                                                mem[mem[64] + 4] = owner
                                                mem[mem[64] + 36] = _1368
                                                require ext_code.size(tokenList[idx])
                                                call tokenList[idx].0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args owner, _1368
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _1433 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_1433] == bool(mem[_1433])
                                        else:
                                            t = 10
                                            u = 1
                                            s = mem[_1092 + 31 len 1]
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
                                            _1767 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _1778 = mem[_1767]
                                            if mem[_1767]:
                                                mem[mem[64] + 4] = owner
                                                mem[mem[64] + 36] = _1778
                                                require ext_code.size(tokenList[idx])
                                                call tokenList[idx].0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args owner, _1778
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _1817 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_1817] == bool(mem[_1817])
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
                                    _1093 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1093] == mem[_1093 + 31 len 1]
                                    if not mem[_1093 + 31 len 1]:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(tokenList[idx])
                                        staticcall tokenList[idx].0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1285 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1314 = mem[_1285]
                                        if mem[_1285]:
                                            mem[mem[64] + 4] = owner
                                            mem[mem[64] + 36] = _1314
                                            require ext_code.size(tokenList[idx])
                                            call tokenList[idx].0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args owner, _1314
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1379 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_1379] == bool(mem[_1379])
                                    else:
                                        if bool(bool(mem[_1093 + 31 len 1] < 78)) or bool(bool(mem[_1093 + 31 len 1] < 32)):
                                            if False and 10^mem[_1093 + 31 len 1] > 0:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(tokenList[idx])
                                            staticcall tokenList[idx].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1345 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _1371 = mem[_1345]
                                            if mem[_1345]:
                                                mem[mem[64] + 4] = owner
                                                mem[mem[64] + 36] = _1371
                                                require ext_code.size(tokenList[idx])
                                                call tokenList[idx].0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args owner, _1371
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _1434 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_1434] == bool(mem[_1434])
                                        else:
                                            t = 10
                                            u = 1
                                            s = mem[_1093 + 31 len 1]
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
                                            _1768 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _1779 = mem[_1768]
                                            if mem[_1768]:
                                                mem[mem[64] + 4] = owner
                                                mem[mem[64] + 36] = _1779
                                                require ext_code.size(tokenList[idx])
                                                call tokenList[idx].0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args owner, _1779
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _1818 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_1818] == bool(mem[_1818])
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
            if unknown_0x14870d2c(?????) > uint32(call.func_hash) >> 224:
                if creator() == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return creatorAddress
                if unknown_0x13af4035(?????) == uint32(call.func_hash) >> 224:
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
                require unknown_0x13e821df(?????) == uint32(call.func_hash) >> 224
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
                        _1089 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1089] == mem[_1089 + 31 len 1]
                        if not mem[_1089 + 31 len 1]:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenList[idx])
                            staticcall tokenList[idx].0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1281 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1310 = mem[_1281]
                            if mem[_1281]:
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _1310
                                require ext_code.size(tokenList[idx])
                                call tokenList[idx].0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _1310
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1375 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1375] == bool(mem[_1375])
                        else:
                            if bool(bool(mem[_1089 + 31 len 1] < 78)) or bool(bool(mem[_1089 + 31 len 1] < 32)):
                                if False and 10^mem[_1089 + 31 len 1] > 0:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenList[idx])
                                staticcall tokenList[idx].0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1337 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1359 = mem[_1337]
                                if mem[_1337]:
                                    mem[mem[64] + 4] = owner
                                    mem[mem[64] + 36] = _1359
                                    require ext_code.size(tokenList[idx])
                                    call tokenList[idx].0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, _1359
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1430 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1430] == bool(mem[_1430])
                            else:
                                t = 10
                                u = 1
                                s = mem[_1089 + 31 len 1]
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
                                _1764 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1775 = mem[_1764]
                                if mem[_1764]:
                                    mem[mem[64] + 4] = owner
                                    mem[mem[64] + 36] = _1775
                                    require ext_code.size(tokenList[idx])
                                    call tokenList[idx].0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, _1775
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1814 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1814] == bool(mem[_1814])
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
                        _1090 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1090] == mem[_1090 + 31 len 1]
                        if not mem[_1090 + 31 len 1]:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokenList[idx])
                            staticcall tokenList[idx].0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1282 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1311 = mem[_1282]
                            if mem[_1282]:
                                mem[mem[64] + 4] = owner
                                mem[mem[64] + 36] = _1311
                                require ext_code.size(tokenList[idx])
                                call tokenList[idx].0xa9059cbb with:
                                     gas gas_remaining wei
                                    args owner, _1311
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1376 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1376] == bool(mem[_1376])
                        else:
                            if bool(bool(mem[_1090 + 31 len 1] < 78)) or bool(bool(mem[_1090 + 31 len 1] < 32)):
                                if False and 10^mem[_1090 + 31 len 1] > 0:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokenList[idx])
                                staticcall tokenList[idx].0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1339 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1362 = mem[_1339]
                                if mem[_1339]:
                                    mem[mem[64] + 4] = owner
                                    mem[mem[64] + 36] = _1362
                                    require ext_code.size(tokenList[idx])
                                    call tokenList[idx].0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, _1362
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1431 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1431] == bool(mem[_1431])
                            else:
                                t = 10
                                u = 1
                                s = mem[_1090 + 31 len 1]
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
                                _1765 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1776 = mem[_1765]
                                if mem[_1765]:
                                    mem[mem[64] + 4] = owner
                                    mem[mem[64] + 36] = _1776
                                    require ext_code.size(tokenList[idx])
                                    call tokenList[idx].0xa9059cbb with:
                                         gas gas_remaining wei
                                        args owner, _1776
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1815 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1815] == bool(mem[_1815])
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
            if unknown_0x1b52b9de(?????) == uint32(call.func_hash) >> 224:
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
        if unknown_0xe24be30d(?????) > uint32(call.func_hash) >> 224:
            if unknown_0xb99152d0(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xb99152d0(?????) == uint32(call.func_hash) >> 224:
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
                if unknown_0xba27f50b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return sub_ba27f50b[arg1]
                require unknown_0xdad69c20(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    if creatorAddress != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                stor2[address(arg1)] = 0
            else:
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
                if uint32(call.func_hash) >> 224 != unknown_0x9e281a98(?????):
                    require unknown_0x9ead7222(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    return tokenList[arg1]
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
                if unknown_0xe24be30d(?????) == uint32(call.func_hash) >> 224:
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
                else:
                    if unknown_0xe551b351(?????) == uint32(call.func_hash) >> 224:
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
                        require unknown_0xf13b5836(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 128
                        require arg3 == address(arg3)
                        mem[32] = 2
                        if stor2[msg.sender]:
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
                                revert with 0, 'empty pool'
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 'empty pool'
                            mem[ceil32(return_data.size) + 132] = this.address
                            require ext_code.size(stor12)
                            staticcall stor12.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > ext_call.return_data[0]:
                                revert with 0, 'balance not enough'
                            if stor11 != address(arg3):
                                revert with 0, 'invalid task'
                            if not stor15:
                                mem[(2 * ceil32(return_data.size)) + 128] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 132] = arg2
                                mem[(2 * ceil32(return_data.size)) + 164] = 64
                                mem[(2 * ceil32(return_data.size)) + 196] = stor6.length
                                mem[0] = 6
                                idx = 0
                                s = 0
                                t = (2 * ceil32(return_data.size)) + 228
                                while idx < stor6.length:
                                    mem[t] = stor6[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor8)
                                staticcall stor8.getAmountsIn(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args arg2, Array(len=stor6.length, data=mem[(2 * ceil32(return_data.size)) + 228 len 32 * stor6.length])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                _1139 = mem[(2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 + 159 < (2 * ceil32(return_data.size)) + return_data.size + 128
                                _1151 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]
                                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128] > test266151307():
                                    revert with 'NH{q', 65
                                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]) + 129 > test266151307():
                                    revert with 'NH{q', 65
                                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]) + 129
                                mem[(4 * ceil32(return_data.size)) + 128] = _1151
                                require return_data.size >= _1139 + (32 * _1151) + 32
                                mem[(4 * ceil32(return_data.size)) + 160 len 32 * _1151] = mem[(2 * ceil32(return_data.size)) + _1139 + 160 len 32 * _1151]
                                if 0 >= _1151:
                                    revert with 'NH{q', 50
                                _1715 = mem[(4 * ceil32(return_data.size)) + 160]
                                if mem[(4 * ceil32(return_data.size)) + 160] > arg1:
                                    revert with 0, 'input too large'
                                mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _1715
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = stor6.length
                                mem[0] = 6
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor6.length:
                                    mem[t] = stor6[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = owner
                                mem[mem[64] + 132] = stor14
                                require ext_code.size(stor8)
                                call stor8.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, _1715, Array(len=stor6.length, data=mem[mem[64] + 196 len 32 * stor6.length]), owner, stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2058 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2067 = mem[_2058]
                                require mem[_2058] <= test266151307()
                                require _2058 + mem[_2058] + 31 < _2058 + return_data.size
                                _2076 = mem[_2058 + mem[_2058]]
                                if mem[_2058 + mem[_2058]] > test266151307():
                                    revert with 'NH{q', 65
                                if ceil32(32 * mem[_2058 + mem[_2058]]) + 1 < 0 or _2058 + ceil32(return_data.size) + ceil32(32 * mem[_2058 + mem[_2058]]) + 1 > test266151307():
                                    revert with 'NH{q', 65
                                mem[64] = _2058 + ceil32(return_data.size) + ceil32(32 * mem[_2058 + mem[_2058]]) + 1
                                mem[_2058 + ceil32(return_data.size)] = _2076
                                require return_data.size >= _2067 + (32 * _2076) + 32
                                mem[_2058 + ceil32(return_data.size) + 32 len 32 * _2076] = mem[_2058 + _2067 + 32 len 32 * _2076]
                                idx = 1
                                s = _1715
                                while idx <= arg4:
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = arg2
                                    mem[mem[64] + 36] = 64
                                    mem[mem[64] + 68] = stor6.length
                                    mem[0] = 6
                                    s = 0
                                    t = sha3(6)
                                    u = mem[64] + 100
                                    while s < stor6.length:
                                        mem[u] = stor[t]
                                        s = s + 1
                                        t = t + 1
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor8)
                                    staticcall stor8.getAmountsIn(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args arg2, Array(len=stor6.length, data=mem[mem[64] + 100 len 32 * stor6.length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2628 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2634 = mem[_2628]
                                    require mem[_2628] <= test266151307()
                                    require _2628 + mem[_2628] + 31 < _2628 + return_data.size
                                    _2637 = mem[_2628 + mem[_2628]]
                                    if mem[_2628 + mem[_2628]] > test266151307():
                                        revert with 'NH{q', 65
                                    if ceil32(32 * mem[_2628 + mem[_2628]]) + 1 < 0 or _2628 + ceil32(return_data.size) + ceil32(32 * mem[_2628 + mem[_2628]]) + 1 > test266151307():
                                        revert with 'NH{q', 65
                                    mem[64] = _2628 + ceil32(return_data.size) + ceil32(32 * mem[_2628 + mem[_2628]]) + 1
                                    mem[_2628 + ceil32(return_data.size)] = _2637
                                    require return_data.size >= _2634 + (32 * _2637) + 32
                                    t = _2628 + _2634 + 32
                                    u = _2628 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2637:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    if 0 >= _2637:
                                        revert with 'NH{q', 50
                                    _2757 = mem[_2628 + ceil32(return_data.size) + 32]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor12)
                                    staticcall stor12.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2769 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if _2757 > mem[_2769]:
                                    mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = arg2
                                    mem[mem[64] + 36] = _2757
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = stor6.length
                                    mem[0] = 6
                                    s = 0
                                    t = sha3(6)
                                    u = mem[64] + 196
                                    while s < stor6.length:
                                        mem[u] = stor[t]
                                        s = s + 1
                                        t = t + 1
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = owner
                                    mem[mem[64] + 132] = stor14
                                    require ext_code.size(stor8)
                                    call stor8.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg2, _2757, Array(len=stor6.length, data=mem[mem[64] + 196 len 32 * stor6.length]), owner, stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2865 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2871 = mem[_2865]
                                    require mem[_2865] <= test266151307()
                                    require _2865 + mem[_2865] + 31 < _2865 + return_data.size
                                    _2877 = mem[_2865 + mem[_2865]]
                                    if mem[_2865 + mem[_2865]] > test266151307():
                                        revert with 'NH{q', 65
                                    if ceil32(32 * mem[_2865 + mem[_2865]]) + 1 < 0 or _2865 + ceil32(return_data.size) + ceil32(32 * mem[_2865 + mem[_2865]]) + 1 > test266151307():
                                        revert with 'NH{q', 65
                                    mem[64] = _2865 + ceil32(return_data.size) + ceil32(32 * mem[_2865 + mem[_2865]]) + 1
                                    mem[_2865 + ceil32(return_data.size)] = _2877
                                    require return_data.size >= _2871 + (32 * _2877) + 32
                                    t = _2865 + _2871 + 32
                                    u = _2865 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2877:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = _2757
                                    continue 
                            else:
                                mem[(2 * ceil32(return_data.size)) + 196] = 160
                                mem[(2 * ceil32(return_data.size)) + 292] = stor6.length
                                idx = 0
                                s = 0
                                t = (2 * ceil32(return_data.size)) + 324
                                while idx < stor6.length:
                                    mem[t] = stor6[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 228] = this.address
                                mem[(2 * ceil32(return_data.size)) + 260] = stor14
                                require ext_code.size(stor8)
                                call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg1 / 100000, arg2 / 100000, Array(len=stor6.length, data=mem[(2 * ceil32(return_data.size)) + 324 len 32 * stor6.length]), address(this.address), stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 132] = stor8
                                mem[(2 * ceil32(return_data.size)) + 164] = test266151307()
                                require ext_code.size(stor13)
                                call stor13.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor8, test266151307()
                                mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(4 * ceil32(return_data.size)) + 132] = this.address
                                require ext_code.size(stor13)
                                staticcall stor13.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(6 * ceil32(return_data.size)) + 292] = stor7.length
                                idx = 0
                                s = 0
                                t = (6 * ceil32(return_data.size)) + 324
                                while idx < stor7.length:
                                    mem[t] = stor7[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[(6 * ceil32(return_data.size)) + 228] = owner
                                mem[(6 * ceil32(return_data.size)) + 260] = stor14
                                require ext_code.size(stor8)
                                call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, owner, stor14, stor7.length, mem[(6 * ceil32(return_data.size)) + 324 len 32 * stor7.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if arg1 < arg1 / 100000:
                                    revert with 'NH{q', 17
                                mem[(6 * ceil32(return_data.size)) + 128] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                mem[(6 * ceil32(return_data.size)) + 132] = arg2
                                mem[(6 * ceil32(return_data.size)) + 164] = 64
                                mem[(6 * ceil32(return_data.size)) + 196] = stor6.length
                                mem[0] = 6
                                idx = 0
                                s = 0
                                t = (6 * ceil32(return_data.size)) + 228
                                while idx < stor6.length:
                                    mem[t] = stor6[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor8)
                                staticcall stor8.getAmountsIn(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args arg2, Array(len=stor6.length, data=mem[(6 * ceil32(return_data.size)) + 228 len 32 * stor6.length])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(6 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (7 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                _2068 = mem[(6 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32
                                require mem[(6 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 + 159 < (6 * ceil32(return_data.size)) + return_data.size + 128
                                _2077 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]
                                if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128] > test266151307():
                                    revert with 'NH{q', 65
                                if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]) + 129 > test266151307():
                                    revert with 'NH{q', 65
                                mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]) + 129
                                mem[(7 * ceil32(return_data.size)) + 128] = _2077
                                require return_data.size >= _2068 + (32 * _2077) + 32
                                mem[(7 * ceil32(return_data.size)) + 160 len 32 * _2077] = mem[(6 * ceil32(return_data.size)) + _2068 + 160 len 32 * _2077]
                                if 0 >= _2077:
                                    revert with 'NH{q', 50
                                _2301 = mem[(7 * ceil32(return_data.size)) + 160]
                                if mem[(7 * ceil32(return_data.size)) + 160] > arg1 - (arg1 / 100000):
                                    revert with 0, 'input too large'
                                mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg2
                                mem[mem[64] + 36] = _2301
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = stor6.length
                                mem[0] = 6
                                idx = 0
                                s = 0
                                t = mem[64] + 196
                                while idx < stor6.length:
                                    mem[t] = stor6[s].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 100] = owner
                                mem[mem[64] + 132] = stor14
                                require ext_code.size(stor8)
                                call stor8.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg2, _2301, Array(len=stor6.length, data=mem[mem[64] + 196 len 32 * stor6.length]), owner, stor14
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2478 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2482 = mem[_2478]
                                require mem[_2478] <= test266151307()
                                require _2478 + mem[_2478] + 31 < _2478 + return_data.size
                                _2488 = mem[_2478 + mem[_2478]]
                                if mem[_2478 + mem[_2478]] > test266151307():
                                    revert with 'NH{q', 65
                                if ceil32(32 * mem[_2478 + mem[_2478]]) + 1 < 0 or _2478 + ceil32(return_data.size) + ceil32(32 * mem[_2478 + mem[_2478]]) + 1 > test266151307():
                                    revert with 'NH{q', 65
                                mem[64] = _2478 + ceil32(return_data.size) + ceil32(32 * mem[_2478 + mem[_2478]]) + 1
                                mem[_2478 + ceil32(return_data.size)] = _2488
                                require return_data.size >= _2482 + (32 * _2488) + 32
                                mem[_2478 + ceil32(return_data.size) + 32 len 32 * _2488] = mem[_2478 + _2482 + 32 len 32 * _2488]
                                idx = 1
                                s = _2301
                                while idx <= arg4:
                                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = arg2
                                    mem[mem[64] + 36] = 64
                                    mem[mem[64] + 68] = stor6.length
                                    mem[0] = 6
                                    s = 0
                                    t = sha3(6)
                                    u = mem[64] + 100
                                    while s < stor6.length:
                                        mem[u] = stor[t]
                                        s = s + 1
                                        t = t + 1
                                        u = u + 32
                                        continue 
                                    require ext_code.size(stor8)
                                    staticcall stor8.getAmountsIn(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args arg2, Array(len=stor6.length, data=mem[mem[64] + 100 len 32 * stor6.length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2866 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2872 = mem[_2866]
                                    require mem[_2866] <= test266151307()
                                    require _2866 + mem[_2866] + 31 < _2866 + return_data.size
                                    _2878 = mem[_2866 + mem[_2866]]
                                    if mem[_2866 + mem[_2866]] > test266151307():
                                        revert with 'NH{q', 65
                                    if ceil32(32 * mem[_2866 + mem[_2866]]) + 1 < 0 or _2866 + ceil32(return_data.size) + ceil32(32 * mem[_2866 + mem[_2866]]) + 1 > test266151307():
                                        revert with 'NH{q', 65
                                    mem[64] = _2866 + ceil32(return_data.size) + ceil32(32 * mem[_2866 + mem[_2866]]) + 1
                                    mem[_2866 + ceil32(return_data.size)] = _2878
                                    require return_data.size >= _2872 + (32 * _2878) + 32
                                    t = _2866 + _2872 + 32
                                    u = _2866 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2878:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    if 0 >= _2878:
                                        revert with 'NH{q', 50
                                    _2946 = mem[_2866 + ceil32(return_data.size) + 32]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor12)
                                    staticcall stor12.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2955 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if _2946 > mem[_2955]:
                                    mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = arg2
                                    mem[mem[64] + 36] = _2946
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = stor6.length
                                    mem[0] = 6
                                    s = 0
                                    t = sha3(6)
                                    u = mem[64] + 196
                                    while s < stor6.length:
                                        mem[u] = stor[t]
                                        s = s + 1
                                        t = t + 1
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 100] = owner
                                    mem[mem[64] + 132] = stor14
                                    require ext_code.size(stor8)
                                    call stor8.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg2, _2946, Array(len=stor6.length, data=mem[mem[64] + 196 len 32 * stor6.length]), owner, stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2988 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2991 = mem[_2988]
                                    require mem[_2988] <= test266151307()
                                    require _2988 + mem[_2988] + 31 < _2988 + return_data.size
                                    _2994 = mem[_2988 + mem[_2988]]
                                    if mem[_2988 + mem[_2988]] > test266151307():
                                        revert with 'NH{q', 65
                                    if ceil32(32 * mem[_2988 + mem[_2988]]) + 1 < 0 or _2988 + ceil32(return_data.size) + ceil32(32 * mem[_2988 + mem[_2988]]) + 1 > test266151307():
                                        revert with 'NH{q', 65
                                    mem[64] = _2988 + ceil32(return_data.size) + ceil32(32 * mem[_2988 + mem[_2988]]) + 1
                                    mem[_2988 + ceil32(return_data.size)] = _2994
                                    require return_data.size >= _2991 + (32 * _2994) + 32
                                    t = _2988 + _2991 + 32
                                    u = _2988 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2994:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = _2946
                                    continue 
                        else:
                            if msg.sender == owner:
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
                                    revert with 0, 'empty pool'
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'empty pool'
                                mem[ceil32(return_data.size) + 132] = this.address
                                require ext_code.size(stor12)
                                staticcall stor12.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg1 > ext_call.return_data[0]:
                                    revert with 0, 'balance not enough'
                                if stor11 != address(arg3):
                                    revert with 0, 'invalid task'
                                if not stor15:
                                    mem[(2 * ceil32(return_data.size)) + 128] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 132] = arg2
                                    mem[(2 * ceil32(return_data.size)) + 164] = 64
                                    mem[(2 * ceil32(return_data.size)) + 196] = stor6.length
                                    mem[0] = 6
                                    idx = 0
                                    s = 0
                                    t = (2 * ceil32(return_data.size)) + 228
                                    while idx < stor6.length:
                                        mem[t] = stor6[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor8)
                                    staticcall stor8.getAmountsIn(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args arg2, Array(len=stor6.length, data=mem[(2 * ceil32(return_data.size)) + 228 len 32 * stor6.length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(2 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (4 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    _1141 = mem[(2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32
                                    require mem[(2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 + 159 < (2 * ceil32(return_data.size)) + return_data.size + 128
                                    _1153 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]
                                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128] > test266151307():
                                        revert with 'NH{q', 65
                                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]) + 129 > test266151307():
                                        revert with 'NH{q', 65
                                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]) + 129
                                    mem[(4 * ceil32(return_data.size)) + 128] = _1153
                                    require return_data.size >= _1141 + (32 * _1153) + 32
                                    mem[(4 * ceil32(return_data.size)) + 160 len 32 * _1153] = mem[(2 * ceil32(return_data.size)) + _1141 + 160 len 32 * _1153]
                                    if 0 >= _1153:
                                        revert with 'NH{q', 50
                                    _1717 = mem[(4 * ceil32(return_data.size)) + 160]
                                    if mem[(4 * ceil32(return_data.size)) + 160] > arg1:
                                        revert with 0, 'input too large'
                                    mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = arg2
                                    mem[mem[64] + 36] = _1717
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = stor6.length
                                    mem[0] = 6
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 196
                                    while idx < stor6.length:
                                        mem[t] = stor6[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[mem[64] + 100] = owner
                                    mem[mem[64] + 132] = stor14
                                    require ext_code.size(stor8)
                                    call stor8.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg2, _1717, Array(len=stor6.length, data=mem[mem[64] + 196 len 32 * stor6.length]), owner, stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2060 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2069 = mem[_2060]
                                    require mem[_2060] <= test266151307()
                                    require _2060 + mem[_2060] + 31 < _2060 + return_data.size
                                    _2078 = mem[_2060 + mem[_2060]]
                                    if mem[_2060 + mem[_2060]] > test266151307():
                                        revert with 'NH{q', 65
                                    if ceil32(32 * mem[_2060 + mem[_2060]]) + 1 < 0 or _2060 + ceil32(return_data.size) + ceil32(32 * mem[_2060 + mem[_2060]]) + 1 > test266151307():
                                        revert with 'NH{q', 65
                                    mem[64] = _2060 + ceil32(return_data.size) + ceil32(32 * mem[_2060 + mem[_2060]]) + 1
                                    mem[_2060 + ceil32(return_data.size)] = _2078
                                    require return_data.size >= _2069 + (32 * _2078) + 32
                                    mem[_2060 + ceil32(return_data.size) + 32 len 32 * _2078] = mem[_2060 + _2069 + 32 len 32 * _2078]
                                    idx = 1
                                    s = _1717
                                    while idx <= arg4:
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = arg2
                                        mem[mem[64] + 36] = 64
                                        mem[mem[64] + 68] = stor6.length
                                        mem[0] = 6
                                        s = 0
                                        t = sha3(6)
                                        u = mem[64] + 100
                                        while s < stor6.length:
                                            mem[u] = stor[t]
                                            s = s + 1
                                            t = t + 1
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor8)
                                        staticcall stor8.getAmountsIn(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args arg2, Array(len=stor6.length, data=mem[mem[64] + 100 len 32 * stor6.length])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2629 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2635 = mem[_2629]
                                        require mem[_2629] <= test266151307()
                                        require _2629 + mem[_2629] + 31 < _2629 + return_data.size
                                        _2638 = mem[_2629 + mem[_2629]]
                                        if mem[_2629 + mem[_2629]] > test266151307():
                                            revert with 'NH{q', 65
                                        if ceil32(32 * mem[_2629 + mem[_2629]]) + 1 < 0 or _2629 + ceil32(return_data.size) + ceil32(32 * mem[_2629 + mem[_2629]]) + 1 > test266151307():
                                            revert with 'NH{q', 65
                                        mem[64] = _2629 + ceil32(return_data.size) + ceil32(32 * mem[_2629 + mem[_2629]]) + 1
                                        mem[_2629 + ceil32(return_data.size)] = _2638
                                        require return_data.size >= _2635 + (32 * _2638) + 32
                                        t = _2629 + _2635 + 32
                                        u = _2629 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _2638:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        if 0 >= _2638:
                                            revert with 'NH{q', 50
                                        _2761 = mem[_2629 + ceil32(return_data.size) + 32]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor12)
                                        staticcall stor12.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2770 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if _2761 > mem[_2770]:
                                        mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = arg2
                                        mem[mem[64] + 36] = _2761
                                        mem[mem[64] + 68] = 160
                                        mem[mem[64] + 164] = stor6.length
                                        mem[0] = 6
                                        s = 0
                                        t = sha3(6)
                                        u = mem[64] + 196
                                        while s < stor6.length:
                                            mem[u] = stor[t]
                                            s = s + 1
                                            t = t + 1
                                            u = u + 32
                                            continue 
                                        mem[mem[64] + 100] = owner
                                        mem[mem[64] + 132] = stor14
                                        require ext_code.size(stor8)
                                        call stor8.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg2, _2761, Array(len=stor6.length, data=mem[mem[64] + 196 len 32 * stor6.length]), owner, stor14
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2867 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2873 = mem[_2867]
                                        require mem[_2867] <= test266151307()
                                        require _2867 + mem[_2867] + 31 < _2867 + return_data.size
                                        _2879 = mem[_2867 + mem[_2867]]
                                        if mem[_2867 + mem[_2867]] > test266151307():
                                            revert with 'NH{q', 65
                                        if ceil32(32 * mem[_2867 + mem[_2867]]) + 1 < 0 or _2867 + ceil32(return_data.size) + ceil32(32 * mem[_2867 + mem[_2867]]) + 1 > test266151307():
                                            revert with 'NH{q', 65
                                        mem[64] = _2867 + ceil32(return_data.size) + ceil32(32 * mem[_2867 + mem[_2867]]) + 1
                                        mem[_2867 + ceil32(return_data.size)] = _2879
                                        require return_data.size >= _2873 + (32 * _2879) + 32
                                        t = _2867 + _2873 + 32
                                        u = _2867 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _2879:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = _2761
                                        continue 
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 196] = 160
                                    mem[(2 * ceil32(return_data.size)) + 292] = stor6.length
                                    idx = 0
                                    s = 0
                                    t = (2 * ceil32(return_data.size)) + 324
                                    while idx < stor6.length:
                                        mem[t] = stor6[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 228] = this.address
                                    mem[(2 * ceil32(return_data.size)) + 260] = stor14
                                    require ext_code.size(stor8)
                                    call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg1 / 100000, arg2 / 100000, Array(len=stor6.length, data=mem[(2 * ceil32(return_data.size)) + 324 len 32 * stor6.length]), address(this.address), stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(2 * ceil32(return_data.size)) + 132] = stor8
                                    mem[(2 * ceil32(return_data.size)) + 164] = test266151307()
                                    require ext_code.size(stor13)
                                    call stor13.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args stor8, test266151307()
                                    mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(4 * ceil32(return_data.size)) + 132] = this.address
                                    require ext_code.size(stor13)
                                    staticcall stor13.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(6 * ceil32(return_data.size)) + 292] = stor7.length
                                    idx = 0
                                    s = 0
                                    t = (6 * ceil32(return_data.size)) + 324
                                    while idx < stor7.length:
                                        mem[t] = stor7[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[(6 * ceil32(return_data.size)) + 228] = owner
                                    mem[(6 * ceil32(return_data.size)) + 260] = stor14
                                    require ext_code.size(stor8)
                                    call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, owner, stor14, stor7.length, mem[(6 * ceil32(return_data.size)) + 324 len 32 * stor7.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if arg1 < arg1 / 100000:
                                        revert with 'NH{q', 17
                                    mem[(6 * ceil32(return_data.size)) + 128] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[(6 * ceil32(return_data.size)) + 132] = arg2
                                    mem[(6 * ceil32(return_data.size)) + 164] = 64
                                    mem[(6 * ceil32(return_data.size)) + 196] = stor6.length
                                    mem[0] = 6
                                    idx = 0
                                    s = 0
                                    t = (6 * ceil32(return_data.size)) + 228
                                    while idx < stor6.length:
                                        mem[t] = stor6[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor8)
                                    staticcall stor8.getAmountsIn(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args arg2, Array(len=stor6.length, data=mem[(6 * ceil32(return_data.size)) + 228 len 32 * stor6.length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(6 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (7 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    _2070 = mem[(6 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32
                                    require mem[(6 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 + 159 < (6 * ceil32(return_data.size)) + return_data.size + 128
                                    _2079 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]
                                    if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128] > test266151307():
                                        revert with 'NH{q', 65
                                    if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]) + 129 > test266151307():
                                        revert with 'NH{q', 65
                                    mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]) + 129
                                    mem[(7 * ceil32(return_data.size)) + 128] = _2079
                                    require return_data.size >= _2070 + (32 * _2079) + 32
                                    mem[(7 * ceil32(return_data.size)) + 160 len 32 * _2079] = mem[(6 * ceil32(return_data.size)) + _2070 + 160 len 32 * _2079]
                                    if 0 >= _2079:
                                        revert with 'NH{q', 50
                                    _2302 = mem[(7 * ceil32(return_data.size)) + 160]
                                    if mem[(7 * ceil32(return_data.size)) + 160] > arg1 - (arg1 / 100000):
                                        revert with 0, 'input too large'
                                    mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = arg2
                                    mem[mem[64] + 36] = _2302
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = stor6.length
                                    mem[0] = 6
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 196
                                    while idx < stor6.length:
                                        mem[t] = stor6[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[mem[64] + 100] = owner
                                    mem[mem[64] + 132] = stor14
                                    require ext_code.size(stor8)
                                    call stor8.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg2, _2302, Array(len=stor6.length, data=mem[mem[64] + 196 len 32 * stor6.length]), owner, stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2479 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2484 = mem[_2479]
                                    require mem[_2479] <= test266151307()
                                    require _2479 + mem[_2479] + 31 < _2479 + return_data.size
                                    _2490 = mem[_2479 + mem[_2479]]
                                    if mem[_2479 + mem[_2479]] > test266151307():
                                        revert with 'NH{q', 65
                                    if ceil32(32 * mem[_2479 + mem[_2479]]) + 1 < 0 or _2479 + ceil32(return_data.size) + ceil32(32 * mem[_2479 + mem[_2479]]) + 1 > test266151307():
                                        revert with 'NH{q', 65
                                    mem[64] = _2479 + ceil32(return_data.size) + ceil32(32 * mem[_2479 + mem[_2479]]) + 1
                                    mem[_2479 + ceil32(return_data.size)] = _2490
                                    require return_data.size >= _2484 + (32 * _2490) + 32
                                    mem[_2479 + ceil32(return_data.size) + 32 len 32 * _2490] = mem[_2479 + _2484 + 32 len 32 * _2490]
                                    idx = 1
                                    s = _2302
                                    while idx <= arg4:
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = arg2
                                        mem[mem[64] + 36] = 64
                                        mem[mem[64] + 68] = stor6.length
                                        mem[0] = 6
                                        s = 0
                                        t = sha3(6)
                                        u = mem[64] + 100
                                        while s < stor6.length:
                                            mem[u] = stor[t]
                                            s = s + 1
                                            t = t + 1
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor8)
                                        staticcall stor8.getAmountsIn(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args arg2, Array(len=stor6.length, data=mem[mem[64] + 100 len 32 * stor6.length])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2868 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2874 = mem[_2868]
                                        require mem[_2868] <= test266151307()
                                        require _2868 + mem[_2868] + 31 < _2868 + return_data.size
                                        _2880 = mem[_2868 + mem[_2868]]
                                        if mem[_2868 + mem[_2868]] > test266151307():
                                            revert with 'NH{q', 65
                                        if ceil32(32 * mem[_2868 + mem[_2868]]) + 1 < 0 or _2868 + ceil32(return_data.size) + ceil32(32 * mem[_2868 + mem[_2868]]) + 1 > test266151307():
                                            revert with 'NH{q', 65
                                        mem[64] = _2868 + ceil32(return_data.size) + ceil32(32 * mem[_2868 + mem[_2868]]) + 1
                                        mem[_2868 + ceil32(return_data.size)] = _2880
                                        require return_data.size >= _2874 + (32 * _2880) + 32
                                        t = _2868 + _2874 + 32
                                        u = _2868 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _2880:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        if 0 >= _2880:
                                            revert with 'NH{q', 50
                                        _2949 = mem[_2868 + ceil32(return_data.size) + 32]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor12)
                                        staticcall stor12.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2956 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if _2949 > mem[_2956]:
                                        mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = arg2
                                        mem[mem[64] + 36] = _2949
                                        mem[mem[64] + 68] = 160
                                        mem[mem[64] + 164] = stor6.length
                                        mem[0] = 6
                                        s = 0
                                        t = sha3(6)
                                        u = mem[64] + 196
                                        while s < stor6.length:
                                            mem[u] = stor[t]
                                            s = s + 1
                                            t = t + 1
                                            u = u + 32
                                            continue 
                                        mem[mem[64] + 100] = owner
                                        mem[mem[64] + 132] = stor14
                                        require ext_code.size(stor8)
                                        call stor8.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg2, _2949, Array(len=stor6.length, data=mem[mem[64] + 196 len 32 * stor6.length]), owner, stor14
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2989 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2992 = mem[_2989]
                                        require mem[_2989] <= test266151307()
                                        require _2989 + mem[_2989] + 31 < _2989 + return_data.size
                                        _2995 = mem[_2989 + mem[_2989]]
                                        if mem[_2989 + mem[_2989]] > test266151307():
                                            revert with 'NH{q', 65
                                        if ceil32(32 * mem[_2989 + mem[_2989]]) + 1 < 0 or _2989 + ceil32(return_data.size) + ceil32(32 * mem[_2989 + mem[_2989]]) + 1 > test266151307():
                                            revert with 'NH{q', 65
                                        mem[64] = _2989 + ceil32(return_data.size) + ceil32(32 * mem[_2989 + mem[_2989]]) + 1
                                        mem[_2989 + ceil32(return_data.size)] = _2995
                                        require return_data.size >= _2992 + (32 * _2995) + 32
                                        t = _2989 + _2992 + 32
                                        u = _2989 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _2995:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = _2949
                                        continue 
                            else:
                                if creatorAddress != msg.sender:
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
                                    revert with 0, 'empty pool'
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'empty pool'
                                mem[ceil32(return_data.size) + 132] = this.address
                                require ext_code.size(stor12)
                                staticcall stor12.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg1 > ext_call.return_data[0]:
                                    revert with 0, 'balance not enough'
                                if stor11 != address(arg3):
                                    revert with 0, 'invalid task'
                                if not stor15:
                                    mem[(2 * ceil32(return_data.size)) + 128] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 132] = arg2
                                    mem[(2 * ceil32(return_data.size)) + 164] = 64
                                    mem[(2 * ceil32(return_data.size)) + 196] = stor6.length
                                    mem[0] = 6
                                    idx = 0
                                    s = 0
                                    t = (2 * ceil32(return_data.size)) + 228
                                    while idx < stor6.length:
                                        mem[t] = stor6[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor8)
                                    staticcall stor8.getAmountsIn(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args arg2, Array(len=stor6.length, data=mem[(2 * ceil32(return_data.size)) + 228 len 32 * stor6.length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(2 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (4 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    _1143 = mem[(2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32
                                    require mem[(2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 + 159 < (2 * ceil32(return_data.size)) + return_data.size + 128
                                    _1155 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]
                                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128] > test266151307():
                                        revert with 'NH{q', 65
                                    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]) + 129 > test266151307():
                                        revert with 'NH{q', 65
                                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]) + 129
                                    mem[(4 * ceil32(return_data.size)) + 128] = _1155
                                    require return_data.size >= _1143 + (32 * _1155) + 32
                                    mem[(4 * ceil32(return_data.size)) + 160 len 32 * _1155] = mem[(2 * ceil32(return_data.size)) + _1143 + 160 len 32 * _1155]
                                    if 0 >= _1155:
                                        revert with 'NH{q', 50
                                    _1719 = mem[(4 * ceil32(return_data.size)) + 160]
                                    if mem[(4 * ceil32(return_data.size)) + 160] > arg1:
                                        revert with 0, 'input too large'
                                    mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = arg2
                                    mem[mem[64] + 36] = _1719
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = stor6.length
                                    mem[0] = 6
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 196
                                    while idx < stor6.length:
                                        mem[t] = stor6[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[mem[64] + 100] = owner
                                    mem[mem[64] + 132] = stor14
                                    require ext_code.size(stor8)
                                    call stor8.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg2, _1719, Array(len=stor6.length, data=mem[mem[64] + 196 len 32 * stor6.length]), owner, stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2062 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2071 = mem[_2062]
                                    require mem[_2062] <= test266151307()
                                    require _2062 + mem[_2062] + 31 < _2062 + return_data.size
                                    _2080 = mem[_2062 + mem[_2062]]
                                    if mem[_2062 + mem[_2062]] > test266151307():
                                        revert with 'NH{q', 65
                                    if ceil32(32 * mem[_2062 + mem[_2062]]) + 1 < 0 or _2062 + ceil32(return_data.size) + ceil32(32 * mem[_2062 + mem[_2062]]) + 1 > test266151307():
                                        revert with 'NH{q', 65
                                    mem[64] = _2062 + ceil32(return_data.size) + ceil32(32 * mem[_2062 + mem[_2062]]) + 1
                                    mem[_2062 + ceil32(return_data.size)] = _2080
                                    require return_data.size >= _2071 + (32 * _2080) + 32
                                    mem[_2062 + ceil32(return_data.size) + 32 len 32 * _2080] = mem[_2062 + _2071 + 32 len 32 * _2080]
                                    idx = 1
                                    s = _1719
                                    while idx <= arg4:
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = arg2
                                        mem[mem[64] + 36] = 64
                                        mem[mem[64] + 68] = stor6.length
                                        mem[0] = 6
                                        s = 0
                                        t = sha3(6)
                                        u = mem[64] + 100
                                        while s < stor6.length:
                                            mem[u] = stor[t]
                                            s = s + 1
                                            t = t + 1
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor8)
                                        staticcall stor8.getAmountsIn(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args arg2, Array(len=stor6.length, data=mem[mem[64] + 100 len 32 * stor6.length])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2630 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2636 = mem[_2630]
                                        require mem[_2630] <= test266151307()
                                        require _2630 + mem[_2630] + 31 < _2630 + return_data.size
                                        _2639 = mem[_2630 + mem[_2630]]
                                        if mem[_2630 + mem[_2630]] > test266151307():
                                            revert with 'NH{q', 65
                                        if ceil32(32 * mem[_2630 + mem[_2630]]) + 1 < 0 or _2630 + ceil32(return_data.size) + ceil32(32 * mem[_2630 + mem[_2630]]) + 1 > test266151307():
                                            revert with 'NH{q', 65
                                        mem[64] = _2630 + ceil32(return_data.size) + ceil32(32 * mem[_2630 + mem[_2630]]) + 1
                                        mem[_2630 + ceil32(return_data.size)] = _2639
                                        require return_data.size >= _2636 + (32 * _2639) + 32
                                        t = _2630 + _2636 + 32
                                        u = _2630 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _2639:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        if 0 >= _2639:
                                            revert with 'NH{q', 50
                                        _2765 = mem[_2630 + ceil32(return_data.size) + 32]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor12)
                                        staticcall stor12.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2771 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if _2765 > mem[_2771]:
                                        mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = arg2
                                        mem[mem[64] + 36] = _2765
                                        mem[mem[64] + 68] = 160
                                        mem[mem[64] + 164] = stor6.length
                                        mem[0] = 6
                                        s = 0
                                        t = sha3(6)
                                        u = mem[64] + 196
                                        while s < stor6.length:
                                            mem[u] = stor[t]
                                            s = s + 1
                                            t = t + 1
                                            u = u + 32
                                            continue 
                                        mem[mem[64] + 100] = owner
                                        mem[mem[64] + 132] = stor14
                                        require ext_code.size(stor8)
                                        call stor8.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg2, _2765, Array(len=stor6.length, data=mem[mem[64] + 196 len 32 * stor6.length]), owner, stor14
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2869 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2875 = mem[_2869]
                                        require mem[_2869] <= test266151307()
                                        require _2869 + mem[_2869] + 31 < _2869 + return_data.size
                                        _2881 = mem[_2869 + mem[_2869]]
                                        if mem[_2869 + mem[_2869]] > test266151307():
                                            revert with 'NH{q', 65
                                        if ceil32(32 * mem[_2869 + mem[_2869]]) + 1 < 0 or _2869 + ceil32(return_data.size) + ceil32(32 * mem[_2869 + mem[_2869]]) + 1 > test266151307():
                                            revert with 'NH{q', 65
                                        mem[64] = _2869 + ceil32(return_data.size) + ceil32(32 * mem[_2869 + mem[_2869]]) + 1
                                        mem[_2869 + ceil32(return_data.size)] = _2881
                                        require return_data.size >= _2875 + (32 * _2881) + 32
                                        t = _2869 + _2875 + 32
                                        u = _2869 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _2881:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = _2765
                                        continue 
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 196] = 160
                                    mem[(2 * ceil32(return_data.size)) + 292] = stor6.length
                                    idx = 0
                                    s = 0
                                    t = (2 * ceil32(return_data.size)) + 324
                                    while idx < stor6.length:
                                        mem[t] = stor6[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 228] = this.address
                                    mem[(2 * ceil32(return_data.size)) + 260] = stor14
                                    require ext_code.size(stor8)
                                    call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg1 / 100000, arg2 / 100000, Array(len=stor6.length, data=mem[(2 * ceil32(return_data.size)) + 324 len 32 * stor6.length]), address(this.address), stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(2 * ceil32(return_data.size)) + 132] = stor8
                                    mem[(2 * ceil32(return_data.size)) + 164] = test266151307()
                                    require ext_code.size(stor13)
                                    call stor13.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args stor8, test266151307()
                                    mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(4 * ceil32(return_data.size)) + 132] = this.address
                                    require ext_code.size(stor13)
                                    staticcall stor13.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(6 * ceil32(return_data.size)) + 292] = stor7.length
                                    idx = 0
                                    s = 0
                                    t = (6 * ceil32(return_data.size)) + 324
                                    while idx < stor7.length:
                                        mem[t] = stor7[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[(6 * ceil32(return_data.size)) + 228] = owner
                                    mem[(6 * ceil32(return_data.size)) + 260] = stor14
                                    require ext_code.size(stor8)
                                    call stor8.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, owner, stor14, stor7.length, mem[(6 * ceil32(return_data.size)) + 324 len 32 * stor7.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if arg1 < arg1 / 100000:
                                        revert with 'NH{q', 17
                                    mem[(6 * ceil32(return_data.size)) + 128] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[(6 * ceil32(return_data.size)) + 132] = arg2
                                    mem[(6 * ceil32(return_data.size)) + 164] = 64
                                    mem[(6 * ceil32(return_data.size)) + 196] = stor6.length
                                    mem[0] = 6
                                    idx = 0
                                    s = 0
                                    t = (6 * ceil32(return_data.size)) + 228
                                    while idx < stor6.length:
                                        mem[t] = stor6[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor8)
                                    staticcall stor8.getAmountsIn(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args arg2, Array(len=stor6.length, data=mem[(6 * ceil32(return_data.size)) + 228 len 32 * stor6.length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(6 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (7 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    _2072 = mem[(6 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32
                                    require mem[(6 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 + 159 < (6 * ceil32(return_data.size)) + return_data.size + 128
                                    _2081 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]
                                    if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128] > test266151307():
                                        revert with 'NH{q', 65
                                    if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]) + 129 > test266151307():
                                        revert with 'NH{q', 65
                                    mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]) + 129
                                    mem[(7 * ceil32(return_data.size)) + 128] = _2081
                                    require return_data.size >= _2072 + (32 * _2081) + 32
                                    mem[(7 * ceil32(return_data.size)) + 160 len 32 * _2081] = mem[(6 * ceil32(return_data.size)) + _2072 + 160 len 32 * _2081]
                                    if 0 >= _2081:
                                        revert with 'NH{q', 50
                                    _2303 = mem[(7 * ceil32(return_data.size)) + 160]
                                    if mem[(7 * ceil32(return_data.size)) + 160] > arg1 - (arg1 / 100000):
                                        revert with 0, 'input too large'
                                    mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = arg2
                                    mem[mem[64] + 36] = _2303
                                    mem[mem[64] + 68] = 160
                                    mem[mem[64] + 164] = stor6.length
                                    mem[0] = 6
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 196
                                    while idx < stor6.length:
                                        mem[t] = stor6[s].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[mem[64] + 100] = owner
                                    mem[mem[64] + 132] = stor14
                                    require ext_code.size(stor8)
                                    call stor8.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg2, _2303, Array(len=stor6.length, data=mem[mem[64] + 196 len 32 * stor6.length]), owner, stor14
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2480 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2486 = mem[_2480]
                                    require mem[_2480] <= test266151307()
                                    require _2480 + mem[_2480] + 31 < _2480 + return_data.size
                                    _2492 = mem[_2480 + mem[_2480]]
                                    if mem[_2480 + mem[_2480]] > test266151307():
                                        revert with 'NH{q', 65
                                    if ceil32(32 * mem[_2480 + mem[_2480]]) + 1 < 0 or _2480 + ceil32(return_data.size) + ceil32(32 * mem[_2480 + mem[_2480]]) + 1 > test266151307():
                                        revert with 'NH{q', 65
                                    mem[64] = _2480 + ceil32(return_data.size) + ceil32(32 * mem[_2480 + mem[_2480]]) + 1
                                    mem[_2480 + ceil32(return_data.size)] = _2492
                                    require return_data.size >= _2486 + (32 * _2492) + 32
                                    mem[_2480 + ceil32(return_data.size) + 32 len 32 * _2492] = mem[_2480 + _2486 + 32 len 32 * _2492]
                                    idx = 1
                                    s = _2303
                                    while idx <= arg4:
                                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = arg2
                                        mem[mem[64] + 36] = 64
                                        mem[mem[64] + 68] = stor6.length
                                        mem[0] = 6
                                        s = 0
                                        t = sha3(6)
                                        u = mem[64] + 100
                                        while s < stor6.length:
                                            mem[u] = stor[t]
                                            s = s + 1
                                            t = t + 1
                                            u = u + 32
                                            continue 
                                        require ext_code.size(stor8)
                                        staticcall stor8.getAmountsIn(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args arg2, Array(len=stor6.length, data=mem[mem[64] + 100 len 32 * stor6.length])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2870 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2876 = mem[_2870]
                                        require mem[_2870] <= test266151307()
                                        require _2870 + mem[_2870] + 31 < _2870 + return_data.size
                                        _2882 = mem[_2870 + mem[_2870]]
                                        if mem[_2870 + mem[_2870]] > test266151307():
                                            revert with 'NH{q', 65
                                        if ceil32(32 * mem[_2870 + mem[_2870]]) + 1 < 0 or _2870 + ceil32(return_data.size) + ceil32(32 * mem[_2870 + mem[_2870]]) + 1 > test266151307():
                                            revert with 'NH{q', 65
                                        mem[64] = _2870 + ceil32(return_data.size) + ceil32(32 * mem[_2870 + mem[_2870]]) + 1
                                        mem[_2870 + ceil32(return_data.size)] = _2882
                                        require return_data.size >= _2876 + (32 * _2882) + 32
                                        t = _2870 + _2876 + 32
                                        u = _2870 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _2882:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        if 0 >= _2882:
                                            revert with 'NH{q', 50
                                        _2952 = mem[_2870 + ceil32(return_data.size) + 32]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor12)
                                        staticcall stor12.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2957 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if _2952 > mem[_2957]:
                                        mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = arg2
                                        mem[mem[64] + 36] = _2952
                                        mem[mem[64] + 68] = 160
                                        mem[mem[64] + 164] = stor6.length
                                        mem[0] = 6
                                        s = 0
                                        t = sha3(6)
                                        u = mem[64] + 196
                                        while s < stor6.length:
                                            mem[u] = stor[t]
                                            s = s + 1
                                            t = t + 1
                                            u = u + 32
                                            continue 
                                        mem[mem[64] + 100] = owner
                                        mem[mem[64] + 132] = stor14
                                        require ext_code.size(stor8)
                                        call stor8.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg2, _2952, Array(len=stor6.length, data=mem[mem[64] + 196 len 32 * stor6.length]), owner, stor14
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2990 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2993 = mem[_2990]
                                        require mem[_2990] <= test266151307()
                                        require _2990 + mem[_2990] + 31 < _2990 + return_data.size
                                        _2996 = mem[_2990 + mem[_2990]]
                                        if mem[_2990 + mem[_2990]] > test266151307():
                                            revert with 'NH{q', 65
                                        if ceil32(32 * mem[_2990 + mem[_2990]]) + 1 < 0 or _2990 + ceil32(return_data.size) + ceil32(32 * mem[_2990 + mem[_2990]]) + 1 > test266151307():
                                            revert with 'NH{q', 65
                                        mem[64] = _2990 + ceil32(return_data.size) + ceil32(32 * mem[_2990 + mem[_2990]]) + 1
                                        mem[_2990 + ceil32(return_data.size)] = _2996
                                        require return_data.size >= _2993 + (32 * _2996) + 32
                                        t = _2990 + _2993 + 32
                                        u = _2990 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _2996:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = _2952
                                        continue 
}



}
