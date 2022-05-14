contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
mapping of uint8 stor5;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function adminMap(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[arg1])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function updateAdmin(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor5[msg.sender]:
        revert with 0, 'caller is not admin'
    stor5[address(arg1)] = uint8(arg2)
}

function Sweep(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor5[msg.sender]:
        revert with 0, 'caller is not admin'
    call arg1 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'failure'
}

function sub_3b38b3b0(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function approveToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if allowance[msg.sender][address(arg1)] + arg2 < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transferForeignToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor5[msg.sender]:
        revert with 0, 'caller is not admin'
    if this.address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't let you take all native token'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 17
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_48d69c4d(?) {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg6 == address(arg6)
    mem[128] = address(arg2)
    mem[160] = address(arg3)
    mem[192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[196] = arg4
    idx = 0
    s = 128
    t = 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    if address(arg6):
        call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg4, arg5, Array(len=2, data=mem[388 len 64]), address(arg6), block.timestamp
    else:
        call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg4, arg5, Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_cbc2d70e(?) {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg6 == address(arg6)
    mem[128] = address(arg2)
    mem[160] = address(arg3)
    mem[192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[196] = arg4
    idx = 0
    s = 128
    t = 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    if address(arg6):
        call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg4, arg5, Array(len=2, data=mem[388 len 64]), address(arg6), block.timestamp
    else:
        call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg4, arg5, Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_967bbc63(?) {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg6 == address(arg6)
    mem[128] = address(arg2)
    mem[160] = address(arg3)
    mem[192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[196] = arg5
    idx = 0
    s = 128
    t = 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    if address(arg6):
        call address(arg1).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value arg4 wei
             gas gas_remaining wei
            args arg5, Array(len=2, data=mem[356 len 64]), address(arg6), block.timestamp
    else:
        call address(arg1).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value arg4 wei
             gas gas_remaining wei
            args arg5, Array(len=2, data=mem[356 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 17
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    if balanceOf[arg2] + arg3 < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0, 17
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function sub_d968aa13(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    staticcall address(arg1).factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall address(arg2).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if ext_call.return_data[31 len 1] < 2:
        revert with 0, 17
    if not uint8(ext_call.return_data[31 len 1] - 2):
        return ext_call.return_data[0], ext_call.return_data[0]
    if bool(bool(uint8(ext_call.return_data[31 len 1] - 2) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - 2) < 32)):
        if not 10^uint8(uint8(ext_call.return_data[0]) - 2):
            revert with 0, 'SafeMath: division by zero', 0
        return ext_call.return_data[0], ext_call.return_data[0] / 10^uint8(uint8(ext_call.return_data[0]) - 2)
    s = 10
    t = 1
    idx = uint8(ext_call.return_data[31 len 1] - 2)
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
        revert with 0, 'SafeMath: division by zero', 0
    return ext_call.return_data[0], ext_call.return_data[0] / s * t
}

function name() {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function sub_f4ffa623(?) {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg6 == address(arg6)
    staticcall address(arg1).WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(arg2) == ext_call.return_data[12 len 20]:
        mem[ceil32(return_data.size) + 128] = address(arg2)
        mem[ceil32(return_data.size) + 160] = address(arg3)
        mem[ceil32(return_data.size) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = arg5
        idx = 0
        s = ceil32(return_data.size) + 128
        t = ceil32(return_data.size) + 356
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg1))
        if address(arg6):
            call address(arg1).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value arg4 wei
                 gas gas_remaining wei
                args arg5, Array(len=2, data=mem[ceil32(return_data.size) + 356 len 64]), address(arg6), block.timestamp
        else:
            call address(arg1).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value arg4 wei
                 gas gas_remaining wei
                args arg5, Array(len=2, data=mem[ceil32(return_data.size) + 356 len 64]), address(this.address), block.timestamp
    else:
        staticcall address(arg1).WETH() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        mem[(2 * ceil32(return_data.size)) + 132] = address(arg1)
        staticcall address(arg2).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(arg1)
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(arg3) != ext_call.return_data[12 len 20]:
            if ext_call.return_data[0] >= arg4:
                mem[(4 * ceil32(return_data.size)) + 128] = address(arg2)
                mem[(4 * ceil32(return_data.size)) + 160] = address(arg3)
                mem[(4 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = arg4
                idx = 0
                s = (4 * ceil32(return_data.size)) + 128
                t = (4 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(arg1))
                if address(arg6):
                    call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg4, arg5, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(arg6), block.timestamp
                else:
                    call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg4, arg5, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
            else:
                mem[(4 * ceil32(return_data.size)) + 100] = address(arg1)
                mem[(4 * ceil32(return_data.size)) + 132] = -1
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(6 * ceil32(return_data.size)) + 128] = address(arg2)
                mem[(6 * ceil32(return_data.size)) + 160] = address(arg3)
                mem[(6 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 196] = arg4
                idx = 0
                s = (6 * ceil32(return_data.size)) + 128
                t = (6 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(arg1))
                if address(arg6):
                    call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg4, arg5, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 388 len 64]), address(arg6), block.timestamp
                else:
                    call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg4, arg5, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
        else:
            if ext_call.return_data[0] >= arg4:
                mem[(4 * ceil32(return_data.size)) + 128] = address(arg2)
                mem[(4 * ceil32(return_data.size)) + 160] = address(arg3)
                mem[(4 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = arg4
                idx = 0
                s = (4 * ceil32(return_data.size)) + 128
                t = (4 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(arg1))
                if address(arg6):
                    call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg4, arg5, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(arg6), block.timestamp
                else:
                    call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg4, arg5, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
            else:
                mem[(4 * ceil32(return_data.size)) + 100] = address(arg1)
                mem[(4 * ceil32(return_data.size)) + 132] = -1
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(6 * ceil32(return_data.size)) + 128] = address(arg2)
                mem[(6 * ceil32(return_data.size)) + 160] = address(arg3)
                mem[(6 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 196] = arg4
                idx = 0
                s = (6 * ceil32(return_data.size)) + 128
                t = (6 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(arg1))
                if address(arg6):
                    call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg4, arg5, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 388 len 64]), address(arg6), block.timestamp
                else:
                    call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg4, arg5, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c4678530(?) {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg6 == address(arg6)
    if arg4:
        staticcall address(arg1).WETH() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if address(arg2) == ext_call.return_data[12 len 20]:
            mem[ceil32(return_data.size) + 128] = address(arg2)
            mem[ceil32(return_data.size) + 160] = address(arg3)
            mem[ceil32(return_data.size) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = arg5
            idx = 0
            s = ceil32(return_data.size) + 128
            t = ceil32(return_data.size) + 356
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(arg1))
            if address(arg6):
                call address(arg1).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value arg4 wei
                     gas gas_remaining wei
                    args arg5, Array(len=2, data=mem[ceil32(return_data.size) + 356 len 64]), address(arg6), block.timestamp
            else:
                call address(arg1).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value arg4 wei
                     gas gas_remaining wei
                    args arg5, Array(len=2, data=mem[ceil32(return_data.size) + 356 len 64]), address(this.address), block.timestamp
        else:
            staticcall address(arg1).WETH() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 100] = this.address
            mem[(2 * ceil32(return_data.size)) + 132] = address(arg1)
            staticcall address(arg2).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(arg1)
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(arg3) != ext_call.return_data[12 len 20]:
                if ext_call.return_data[0] >= arg4:
                    mem[(4 * ceil32(return_data.size)) + 128] = address(arg2)
                    mem[(4 * ceil32(return_data.size)) + 160] = address(arg3)
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = arg4
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 128
                    t = (4 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(arg1))
                    if address(arg6):
                        call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg4, arg5, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(arg6), block.timestamp
                    else:
                        call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg4, arg5, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
                else:
                    mem[(4 * ceil32(return_data.size)) + 100] = address(arg1)
                    mem[(4 * ceil32(return_data.size)) + 132] = -1
                    call address(arg2).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(6 * ceil32(return_data.size)) + 128] = address(arg2)
                    mem[(6 * ceil32(return_data.size)) + 160] = address(arg3)
                    mem[(6 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 196] = arg4
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = (6 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(arg1))
                    if address(arg6):
                        call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg4, arg5, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 388 len 64]), address(arg6), block.timestamp
                    else:
                        call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg4, arg5, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
            else:
                if ext_call.return_data[0] >= arg4:
                    mem[(4 * ceil32(return_data.size)) + 128] = address(arg2)
                    mem[(4 * ceil32(return_data.size)) + 160] = address(arg3)
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = arg4
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 128
                    t = (4 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(arg1))
                    if address(arg6):
                        call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg4, arg5, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(arg6), block.timestamp
                    else:
                        call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg4, arg5, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
                else:
                    mem[(4 * ceil32(return_data.size)) + 100] = address(arg1)
                    mem[(4 * ceil32(return_data.size)) + 132] = -1
                    call address(arg2).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(6 * ceil32(return_data.size)) + 128] = address(arg2)
                    mem[(6 * ceil32(return_data.size)) + 160] = address(arg3)
                    mem[(6 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 196] = arg4
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = (6 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(arg1))
                    if address(arg6):
                        call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg4, arg5, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 388 len 64]), address(arg6), block.timestamp
                    else:
                        call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg4, arg5, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
    else:
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'Insufficient balance'
            staticcall address(arg1).WETH() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if address(arg2) == ext_call.return_data[12 len 20]:
                mem[(2 * ceil32(return_data.size)) + 128] = address(arg2)
                mem[(2 * ceil32(return_data.size)) + 160] = address(arg3)
                mem[(2 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 196] = arg5
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (2 * ceil32(return_data.size)) + 356
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(arg1))
                if address(arg6):
                    call address(arg1).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                        args arg5, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 356 len 64]), address(arg6), block.timestamp
                else:
                    call address(arg1).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                        args arg5, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 356 len 64]), address(this.address), block.timestamp
            else:
                staticcall address(arg1).WETH() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(4 * ceil32(return_data.size)) + 100] = this.address
                mem[(4 * ceil32(return_data.size)) + 132] = address(arg1)
                staticcall address(arg2).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(arg3) != ext_call.return_data[12 len 20]:
                    if ext_call.return_data[0] >= ext_call.return_data[0]:
                        mem[(6 * ceil32(return_data.size)) + 128] = address(arg2)
                        mem[(6 * ceil32(return_data.size)) + 160] = address(arg3)
                        mem[(6 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = (6 * ceil32(return_data.size)) + 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(arg1))
                        if address(arg6):
                            call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], arg5, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 388 len 64]), address(arg6), block.timestamp
                        else:
                            call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], arg5, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
                    else:
                        mem[(6 * ceil32(return_data.size)) + 132] = -1
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(7 * ceil32(return_data.size)) + 128] = address(arg2)
                        mem[(7 * ceil32(return_data.size)) + 160] = address(arg3)
                        mem[(7 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[(7 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + 128
                        t = (7 * ceil32(return_data.size)) + 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(arg1))
                        if address(arg6):
                            call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], arg5, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 388 len 64]), address(arg6), block.timestamp
                        else:
                            call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], arg5, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
                else:
                    if ext_call.return_data[0] >= ext_call.return_data[0]:
                        mem[(6 * ceil32(return_data.size)) + 128] = address(arg2)
                        mem[(6 * ceil32(return_data.size)) + 160] = address(arg3)
                        mem[(6 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = (6 * ceil32(return_data.size)) + 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(arg1))
                        if address(arg6):
                            call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], arg5, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 388 len 64]), address(arg6), block.timestamp
                        else:
                            call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], arg5, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
                    else:
                        mem[(6 * ceil32(return_data.size)) + 132] = -1
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(7 * ceil32(return_data.size)) + 128] = address(arg2)
                        mem[(7 * ceil32(return_data.size)) + 160] = address(arg3)
                        mem[(7 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(7 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + 128
                        t = (7 * ceil32(return_data.size)) + 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(arg1))
                        if address(arg6):
                            call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], arg5, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 388 len 64]), address(arg6), block.timestamp
                        else:
                            call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], arg5, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
        else:
            mem[ceil32(return_data.size) + 100] = msg.sender
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                revert with 0, 'Insufficient balance'
            staticcall address(arg1).WETH() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if address(arg2) == ext_call.return_data[12 len 20]:
                mem[(4 * ceil32(return_data.size)) + 128] = address(arg2)
                mem[(4 * ceil32(return_data.size)) + 160] = address(arg3)
                mem[(4 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = arg5
                idx = 0
                s = (4 * ceil32(return_data.size)) + 128
                t = (4 * ceil32(return_data.size)) + 356
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(arg1))
                if address(arg6):
                    call address(arg1).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                        args arg5, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 356 len 64]), address(arg6), block.timestamp
                else:
                    call address(arg1).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                        args arg5, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 356 len 64]), address(this.address), block.timestamp
            else:
                staticcall address(arg1).WETH() with:
                        gas gas_remaining wei
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(6 * ceil32(return_data.size)) + 100] = this.address
                mem[(6 * ceil32(return_data.size)) + 132] = address(arg1)
                staticcall address(arg2).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(arg1)
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(arg3) != ext_call.return_data[12 len 20]:
                    if ext_call.return_data[0] >= ext_call.return_data[0]:
                        mem[(7 * ceil32(return_data.size)) + 128] = address(arg2)
                        mem[(7 * ceil32(return_data.size)) + 160] = address(arg3)
                        mem[(7 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[(7 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + 128
                        t = (7 * ceil32(return_data.size)) + 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(arg1))
                        if address(arg6):
                            call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], arg5, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 388 len 64]), address(arg6), block.timestamp
                        else:
                            call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], arg5, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
                    else:
                        mem[(7 * ceil32(return_data.size)) + 100] = address(arg1)
                        mem[(7 * ceil32(return_data.size)) + 132] = -1
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), -1
                        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(8 * ceil32(return_data.size)) + 128] = address(arg2)
                        mem[(8 * ceil32(return_data.size)) + 160] = address(arg3)
                        mem[(8 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[(8 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + 128
                        t = (8 * ceil32(return_data.size)) + 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(arg1))
                        if address(arg6):
                            call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], arg5, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 388 len 64]), address(arg6), block.timestamp
                        else:
                            call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], arg5, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
                else:
                    if ext_call.return_data[0] >= ext_call.return_data[0]:
                        mem[(7 * ceil32(return_data.size)) + 128] = address(arg2)
                        mem[(7 * ceil32(return_data.size)) + 160] = address(arg3)
                        mem[(7 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(7 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + 128
                        t = (7 * ceil32(return_data.size)) + 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(arg1))
                        if address(arg6):
                            call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], arg5, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 388 len 64]), address(arg6), block.timestamp
                        else:
                            call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], arg5, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
                    else:
                        mem[(7 * ceil32(return_data.size)) + 100] = address(arg1)
                        mem[(7 * ceil32(return_data.size)) + 132] = -1
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), -1
                        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(8 * ceil32(return_data.size)) + 128] = address(arg2)
                        mem[(8 * ceil32(return_data.size)) + 160] = address(arg3)
                        mem[(8 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(8 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + 128
                        t = (8 * ceil32(return_data.size)) + 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(arg1))
                        if address(arg6):
                            call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], arg5, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 388 len 64]), address(arg6), block.timestamp
                        else:
                            call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], arg5, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x807273ef(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x313ce567(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 18
                if unknown_0x39509351(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    if allowance[msg.sender][address(arg1)] > !arg2:
                        revert with 0, 17
                    if allowance[msg.sender][address(arg1)] + arg2 < allowance[msg.sender][address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not address(arg1):
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
                    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, address(arg1));
                    return 1
                if unknown_0x3b38b3b0(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if uint32(call.func_hash) >> 224 != unknown_0x48d69c4d(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0x670a6fd9(?????):
                        require unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return balanceOf[address(arg1)]
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == bool(arg2)
                    if not stor5[msg.sender]:
                        revert with 0, 'caller is not admin'
                    stor5[address(arg1)] = uint8(bool(arg2))
                else:
                    require not msg.value
                    require calldata.size - 4 >= 192
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    require arg3 == address(arg3)
                    require arg6 == address(arg6)
                    mem[160] = address(arg2)
                    mem[192] = address(arg3)
                    mem[224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[228] = arg4
                    idx = 0
                    s = 160
                    t = 420
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(arg1))
                    if address(arg6):
                        call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg4, arg5, Array(len=2, data=mem[420 len 64]), address(arg6), block.timestamp
                    else:
                        call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg4, arg5, Array(len=2, data=mem[420 len 64]), address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            if approveToken(address arg1, address arg2) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                return bool(ext_call.return_data[0])
            if name() == uint32(call.func_hash) >> 224:
                require not msg.value
                if bool(stor3.length):
                    if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor3.length):
                        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor3.length):
                            if 31 < uint255(stor3.length) * 0.5:
                                mem[160] = uint256(stor3.field_0)
                                idx = 160
                                s = 0
                                while (uint255(stor3.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor3[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)])
                            mem[160] = 256 * stor3.length.field_8
                    else:
                        if bool(stor3.length) == stor3.length.field_1 < 32:
                            revert with 0, 34
                        if stor3.length.field_1:
                            if 31 < stor3.length.field_1:
                                mem[160] = uint256(stor3.field_0)
                                idx = 160
                                s = 0
                                while stor3.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor3[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)])
                            mem[160] = 256 * stor3.length.field_8
                    mem[ceil32(uint255(stor3.length) * 0.5) + 224 len ceil32(uint255(stor3.length) * 0.5)] = mem[160 len ceil32(uint255(stor3.length) * 0.5)]
                    if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
                        mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 224] = 0
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
                if bool(stor3.length) == stor3.length.field_1 < 32:
                    revert with 0, 34
                if bool(stor3.length):
                    if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor3.length):
                        if 31 < uint255(stor3.length) * 0.5:
                            mem[160] = uint256(stor3.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor3.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor3[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)])
                        mem[160] = 256 * stor3.length.field_8
                else:
                    if bool(stor3.length) == stor3.length.field_1 < 32:
                        revert with 0, 34
                    if stor3.length.field_1:
                        if 31 < stor3.length.field_1:
                            mem[160] = uint256(stor3.field_0)
                            idx = 160
                            s = 0
                            while stor3.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor3[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)])
                        mem[160] = 256 * stor3.length.field_8
                mem[ceil32(stor3.length.field_1) + 224 len ceil32(stor3.length.field_1)] = mem[160 len ceil32(stor3.length.field_1)]
                if ceil32(stor3.length.field_1) > stor3.length.field_1:
                    mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 224] = 0
                return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 224 len 2 * ceil32(stor3.length.field_1)]), 
            if approve(address arg1, uint256 arg2) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                if not msg.sender:
                    revert with 0, 'ERC20: approve from the zero address'
                if not address(arg1):
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(msg.sender)][address(arg1)] = arg2
                emit Approval(arg2, msg.sender, address(arg1));
            else:
                if unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return totalSupply
                require unknown_0x23b872dd(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 96
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                if not address(arg1):
                    revert with 0, 'ERC20: transfer from the zero address'
                if not address(arg2):
                    revert with 0, 'ERC20: transfer to the zero address'
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                if balanceOf[address(arg1)] < arg3:
                    revert with 0, 17
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, address(arg1), address(arg2));
                if arg3 > allowance[address(arg1)][msg.sender]:
                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[296 len 24] >> 64, 0
                if allowance[address(arg1)][msg.sender] < arg3:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
                emit Approval((allowance[address(arg1)][msg.sender] - arg3), address(arg1), msg.sender);
            return 1
        if unknown_0xc4678530(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x807273ef(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if not stor5[msg.sender]:
                    revert with 0, 'caller is not admin'
                call address(arg1) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'failure'
            else:
                if unknown_0x8366e79a(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    if not stor5[msg.sender]:
                        revert with 0, 'caller is not admin'
                    if this.address == address(arg1):
                        revert with 0, 'Can't let you take all native token'
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg2), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    return bool(ext_call.return_data[0])
                if unknown_0x95d89b41(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if bool(stor4.length):
                        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                            revert with 0, 34
                        if bool(stor4.length):
                            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor4.length):
                                if 31 < uint255(stor4.length) * 0.5:
                                    mem[160] = uint256(stor4.field_0)
                                    idx = 160
                                    s = 0
                                    while (uint255(stor4.length) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor4[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)])
                                mem[160] = 256 * stor4.length.field_8
                        else:
                            if bool(stor4.length) == stor4.length.field_1 < 32:
                                revert with 0, 34
                            if stor4.length.field_1:
                                if 31 < stor4.length.field_1:
                                    mem[160] = uint256(stor4.field_0)
                                    idx = 160
                                    s = 0
                                    while stor4.length.field_1 + 128 > idx:
                                        mem[idx + 32] = stor4[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)])
                                mem[160] = 256 * stor4.length.field_8
                        mem[ceil32(uint255(stor4.length) * 0.5) + 224 len ceil32(uint255(stor4.length) * 0.5)] = mem[160 len ceil32(uint255(stor4.length) * 0.5)]
                        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
                            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 224] = 0
                        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
                    if bool(stor4.length) == stor4.length.field_1 < 32:
                        revert with 0, 34
                    if bool(stor4.length):
                        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor4.length):
                            if 31 < uint255(stor4.length) * 0.5:
                                mem[160] = uint256(stor4.field_0)
                                idx = 160
                                s = 0
                                while (uint255(stor4.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor4[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)])
                            mem[160] = 256 * stor4.length.field_8
                    else:
                        if bool(stor4.length) == stor4.length.field_1 < 32:
                            revert with 0, 34
                        if stor4.length.field_1:
                            if 31 < stor4.length.field_1:
                                mem[160] = uint256(stor4.field_0)
                                idx = 160
                                s = 0
                                while stor4.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor4[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)])
                            mem[160] = 256 * stor4.length.field_8
                    mem[ceil32(stor4.length.field_1) + 224 len ceil32(stor4.length.field_1)] = mem[160 len ceil32(stor4.length.field_1)]
                    if ceil32(stor4.length.field_1) > stor4.length.field_1:
                        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 224] = 0
                    return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 224 len 2 * ceil32(stor4.length.field_1)]), 
                if uint32(call.func_hash) >> 224 != unknown_0x967bbc63(?????):
                    if unknown_0xa457c2d7(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        if arg2 > allowance[msg.sender][address(arg1)]:
                            revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[197 len 27] >> 40, 0
                        if allowance[msg.sender][address(arg1)] < arg2:
                            revert with 0, 17
                        if not msg.sender:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not address(arg1):
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
                        emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, address(arg1));
                    else:
                        require unknown_0xa9059cbb(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(arg1):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > !arg2:
                            revert with 0, 17
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, address(arg1));
                    return 1
                require not msg.value
                require calldata.size - 4 >= 192
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                require arg3 == address(arg3)
                require arg6 == address(arg6)
                mem[160] = address(arg2)
                mem[192] = address(arg3)
                mem[224] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[228] = arg5
                idx = 0
                s = 160
                t = 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(arg1))
                if address(arg6):
                    call address(arg1).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value arg4 wei
                         gas gas_remaining wei
                        args arg5, Array(len=2, data=mem[388 len 64]), address(arg6), block.timestamp
                else:
                    call address(arg1).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value arg4 wei
                         gas gas_remaining wei
                        args arg5, Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if uint32(call.func_hash) >> 224 != unknown_0xc4678530(?????):
                if unknown_0xcbc2d70e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 192
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    require arg3 == address(arg3)
                    require arg6 == address(arg6)
                    mem[160] = address(arg2)
                    mem[192] = address(arg3)
                    mem[224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[228] = arg4
                    idx = 0
                    s = 160
                    t = 420
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(arg1))
                    if address(arg6):
                        call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg4, arg5, Array(len=2, data=mem[420 len 64]), address(arg6), block.timestamp
                    else:
                        call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg4, arg5, Array(len=2, data=mem[420 len 64]), address(this.address), block.timestamp
                else:
                    if unknown_0xd968aa13(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 96
                        require arg1 == address(arg1)
                        require arg2 == address(arg2)
                        require arg3 == address(arg3)
                        staticcall address(arg1).factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(arg2), address(arg3)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        staticcall address(arg2).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        staticcall address(arg2).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if ext_call.return_data[31 len 1] < 2:
                            revert with 0, 17
                        if not uint8(ext_call.return_data[31 len 1] - 2):
                            return ext_call.return_data[0], ext_call.return_data[0]
                        if bool(bool(uint8(ext_call.return_data[31 len 1] - 2) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - 2) < 32)):
                            if not 10^uint8(uint8(ext_call.return_data[0]) - 2):
                                revert with 0, 'SafeMath: division by zero', 0
                            return ext_call.return_data[0], ext_call.return_data[0] / 10^uint8(uint8(ext_call.return_data[0]) - 2)
                        s = 10
                        t = 1
                        idx = uint8(ext_call.return_data[31 len 1] - 2)
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
                            revert with 0, 'SafeMath: division by zero', 0
                        return ext_call.return_data[0], ext_call.return_data[0] / s * t
                    if unknown_0xdbbc830b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return bool(stor5[arg1])
                    if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require arg2 == address(arg2)
                        return allowance[address(arg1)][address(arg2)]
                    require unknown_0xf4ffa623(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 192
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    require arg3 == address(arg3)
                    require arg6 == address(arg6)
                    staticcall address(arg1).WETH() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if address(arg2) == ext_call.return_data[12 len 20]:
                        mem[ceil32(return_data.size) + 160] = address(arg2)
                        mem[ceil32(return_data.size) + 192] = address(arg3)
                        mem[ceil32(return_data.size) + 224] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 228] = arg5
                        idx = 0
                        s = ceil32(return_data.size) + 160
                        t = ceil32(return_data.size) + 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(arg1))
                        if address(arg6):
                            call address(arg1).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value arg4 wei
                                 gas gas_remaining wei
                                args arg5, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(arg6), block.timestamp
                        else:
                            call address(arg1).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value arg4 wei
                                 gas gas_remaining wei
                                args arg5, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp
                    else:
                        staticcall address(arg1).WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 132] = this.address
                        mem[(2 * ceil32(return_data.size)) + 164] = address(arg1)
                        staticcall address(arg2).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(arg1)
                        mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(arg3) != ext_call.return_data[12 len 20]:
                            if ext_call.return_data[0] >= arg4:
                                mem[(4 * ceil32(return_data.size)) + 160] = address(arg2)
                                mem[(4 * ceil32(return_data.size)) + 192] = address(arg3)
                                mem[(4 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 228] = arg4
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 160
                                t = (4 * ceil32(return_data.size)) + 420
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg1))
                                if address(arg6):
                                    call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg4, arg5, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 420 len 64]), address(arg6), block.timestamp
                                else:
                                    call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg4, arg5, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 420 len 64]), address(this.address), block.timestamp
                            else:
                                mem[(4 * ceil32(return_data.size)) + 132] = address(arg1)
                                mem[(4 * ceil32(return_data.size)) + 164] = -1
                                call address(arg2).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(6 * ceil32(return_data.size)) + 160] = address(arg2)
                                mem[(6 * ceil32(return_data.size)) + 192] = address(arg3)
                                mem[(6 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[(6 * ceil32(return_data.size)) + 228] = arg4
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + 160
                                t = (6 * ceil32(return_data.size)) + 420
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg1))
                                if address(arg6):
                                    call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg4, arg5, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 420 len 64]), address(arg6), block.timestamp
                                else:
                                    call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg4, arg5, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 420 len 64]), address(this.address), block.timestamp
                        else:
                            if ext_call.return_data[0] >= arg4:
                                mem[(4 * ceil32(return_data.size)) + 160] = address(arg2)
                                mem[(4 * ceil32(return_data.size)) + 192] = address(arg3)
                                mem[(4 * ceil32(return_data.size)) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 228] = arg4
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 160
                                t = (4 * ceil32(return_data.size)) + 420
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg1))
                                if address(arg6):
                                    call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg4, arg5, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 420 len 64]), address(arg6), block.timestamp
                                else:
                                    call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg4, arg5, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 420 len 64]), address(this.address), block.timestamp
                            else:
                                mem[(4 * ceil32(return_data.size)) + 132] = address(arg1)
                                mem[(4 * ceil32(return_data.size)) + 164] = -1
                                call address(arg2).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(6 * ceil32(return_data.size)) + 160] = address(arg2)
                                mem[(6 * ceil32(return_data.size)) + 192] = address(arg3)
                                mem[(6 * ceil32(return_data.size)) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[(6 * ceil32(return_data.size)) + 228] = arg4
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + 160
                                t = (6 * ceil32(return_data.size)) + 420
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg1))
                                if address(arg6):
                                    call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg4, arg5, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 420 len 64]), address(arg6), block.timestamp
                                else:
                                    call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg4, arg5, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 420 len 64]), address(this.address), block.timestamp
            else:
                require not msg.value
                require calldata.size - 4 >= 192
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                require arg3 == address(arg3)
                require arg6 == address(arg6)
                if arg4:
                    staticcall address(arg1).WETH() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if address(arg2) == ext_call.return_data[12 len 20]:
                        mem[ceil32(return_data.size) + 160] = address(arg2)
                        mem[ceil32(return_data.size) + 192] = address(arg3)
                        mem[ceil32(return_data.size) + 224] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 228] = arg5
                        idx = 0
                        s = ceil32(return_data.size) + 160
                        t = ceil32(return_data.size) + 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(arg1))
                        if address(arg6):
                            call address(arg1).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value arg4 wei
                                 gas gas_remaining wei
                                args arg5, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(arg6), block.timestamp
                        else:
                            call address(arg1).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value arg4 wei
                                 gas gas_remaining wei
                                args arg5, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp
                    else:
                        staticcall address(arg1).WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 132] = this.address
                        mem[(2 * ceil32(return_data.size)) + 164] = address(arg1)
                        staticcall address(arg2).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(arg1)
                        mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(arg3) != ext_call.return_data[12 len 20]:
                            if ext_call.return_data[0] >= arg4:
                                mem[(4 * ceil32(return_data.size)) + 160] = address(arg2)
                                mem[(4 * ceil32(return_data.size)) + 192] = address(arg3)
                                mem[(4 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 228] = arg4
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 160
                                t = (4 * ceil32(return_data.size)) + 420
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg1))
                                if address(arg6):
                                    call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg4, arg5, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 420 len 64]), address(arg6), block.timestamp
                                else:
                                    call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg4, arg5, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 420 len 64]), address(this.address), block.timestamp
                            else:
                                mem[(4 * ceil32(return_data.size)) + 132] = address(arg1)
                                mem[(4 * ceil32(return_data.size)) + 164] = -1
                                call address(arg2).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(6 * ceil32(return_data.size)) + 160] = address(arg2)
                                mem[(6 * ceil32(return_data.size)) + 192] = address(arg3)
                                mem[(6 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[(6 * ceil32(return_data.size)) + 228] = arg4
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + 160
                                t = (6 * ceil32(return_data.size)) + 420
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg1))
                                if address(arg6):
                                    call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg4, arg5, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 420 len 64]), address(arg6), block.timestamp
                                else:
                                    call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg4, arg5, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 420 len 64]), address(this.address), block.timestamp
                        else:
                            if ext_call.return_data[0] >= arg4:
                                mem[(4 * ceil32(return_data.size)) + 160] = address(arg2)
                                mem[(4 * ceil32(return_data.size)) + 192] = address(arg3)
                                mem[(4 * ceil32(return_data.size)) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 228] = arg4
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 160
                                t = (4 * ceil32(return_data.size)) + 420
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg1))
                                if address(arg6):
                                    call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg4, arg5, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 420 len 64]), address(arg6), block.timestamp
                                else:
                                    call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg4, arg5, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 420 len 64]), address(this.address), block.timestamp
                            else:
                                mem[(4 * ceil32(return_data.size)) + 132] = address(arg1)
                                mem[(4 * ceil32(return_data.size)) + 164] = -1
                                call address(arg2).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(6 * ceil32(return_data.size)) + 160] = address(arg2)
                                mem[(6 * ceil32(return_data.size)) + 192] = address(arg3)
                                mem[(6 * ceil32(return_data.size)) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[(6 * ceil32(return_data.size)) + 228] = arg4
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + 160
                                t = (6 * ceil32(return_data.size)) + 420
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(arg1))
                                if address(arg6):
                                    call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg4, arg5, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 420 len 64]), address(arg6), block.timestamp
                                else:
                                    call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg4, arg5, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 420 len 64]), address(this.address), block.timestamp
                else:
                    staticcall address(arg2).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'Insufficient balance'
                        staticcall address(arg1).WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if address(arg2) == ext_call.return_data[12 len 20]:
                            mem[(2 * ceil32(return_data.size)) + 160] = address(arg2)
                            mem[(2 * ceil32(return_data.size)) + 192] = address(arg3)
                            mem[(2 * ceil32(return_data.size)) + 224] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 228] = arg5
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 160
                            t = (2 * ceil32(return_data.size)) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(arg1))
                            if address(arg6):
                                call address(arg1).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                    args arg5, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), address(arg6), block.timestamp
                            else:
                                call address(arg1).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                    args arg5, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
                        else:
                            staticcall address(arg1).WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(4 * ceil32(return_data.size)) + 132] = this.address
                            mem[(4 * ceil32(return_data.size)) + 164] = address(arg1)
                            staticcall address(arg2).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(arg3) != ext_call.return_data[12 len 20]:
                                if ext_call.return_data[0] >= ext_call.return_data[0]:
                                    mem[(6 * ceil32(return_data.size)) + 160] = address(arg2)
                                    mem[(6 * ceil32(return_data.size)) + 192] = address(arg3)
                                    mem[(6 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[(6 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                                    idx = 0
                                    s = (6 * ceil32(return_data.size)) + 160
                                    t = (6 * ceil32(return_data.size)) + 420
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(arg1))
                                    if address(arg6):
                                        call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], arg5, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 420 len 64]), address(arg6), block.timestamp
                                    else:
                                        call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], arg5, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 420 len 64]), address(this.address), block.timestamp
                                else:
                                    mem[(6 * ceil32(return_data.size)) + 164] = -1
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), -1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(7 * ceil32(return_data.size)) + 160] = address(arg2)
                                    mem[(7 * ceil32(return_data.size)) + 192] = address(arg3)
                                    mem[(7 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[(7 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                                    idx = 0
                                    s = (7 * ceil32(return_data.size)) + 160
                                    t = (7 * ceil32(return_data.size)) + 420
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(arg1))
                                    if address(arg6):
                                        call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], arg5, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 420 len 64]), address(arg6), block.timestamp
                                    else:
                                        call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], arg5, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 420 len 64]), address(this.address), block.timestamp
                            else:
                                if ext_call.return_data[0] >= ext_call.return_data[0]:
                                    mem[(6 * ceil32(return_data.size)) + 160] = address(arg2)
                                    mem[(6 * ceil32(return_data.size)) + 192] = address(arg3)
                                    mem[(6 * ceil32(return_data.size)) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[(6 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                                    idx = 0
                                    s = (6 * ceil32(return_data.size)) + 160
                                    t = (6 * ceil32(return_data.size)) + 420
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(arg1))
                                    if address(arg6):
                                        call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], arg5, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 420 len 64]), address(arg6), block.timestamp
                                    else:
                                        call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], arg5, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 420 len 64]), address(this.address), block.timestamp
                                else:
                                    mem[(6 * ceil32(return_data.size)) + 164] = -1
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), -1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(7 * ceil32(return_data.size)) + 160] = address(arg2)
                                    mem[(7 * ceil32(return_data.size)) + 192] = address(arg3)
                                    mem[(7 * ceil32(return_data.size)) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[(7 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                                    idx = 0
                                    s = (7 * ceil32(return_data.size)) + 160
                                    t = (7 * ceil32(return_data.size)) + 420
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(arg1))
                                    if address(arg6):
                                        call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], arg5, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 420 len 64]), address(arg6), block.timestamp
                                    else:
                                        call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], arg5, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 420 len 64]), address(this.address), block.timestamp
                    else:
                        mem[ceil32(return_data.size) + 132] = msg.sender
                        staticcall address(arg2).0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'Insufficient balance'
                        staticcall address(arg1).WETH() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if address(arg2) == ext_call.return_data[12 len 20]:
                            mem[(4 * ceil32(return_data.size)) + 160] = address(arg2)
                            mem[(4 * ceil32(return_data.size)) + 192] = address(arg3)
                            mem[(4 * ceil32(return_data.size)) + 224] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 228] = arg5
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 160
                            t = (4 * ceil32(return_data.size)) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(arg1))
                            if address(arg6):
                                call address(arg1).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                    args arg5, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(arg6), block.timestamp
                            else:
                                call address(arg1).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                    args arg5, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp
                        else:
                            staticcall address(arg1).WETH() with:
                                    gas gas_remaining wei
                            mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(6 * ceil32(return_data.size)) + 132] = this.address
                            mem[(6 * ceil32(return_data.size)) + 164] = address(arg1)
                            staticcall address(arg2).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(arg1)
                            mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(arg3) != ext_call.return_data[12 len 20]:
                                if ext_call.return_data[0] >= ext_call.return_data[0]:
                                    mem[(7 * ceil32(return_data.size)) + 160] = address(arg2)
                                    mem[(7 * ceil32(return_data.size)) + 192] = address(arg3)
                                    mem[(7 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[(7 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                                    idx = 0
                                    s = (7 * ceil32(return_data.size)) + 160
                                    t = (7 * ceil32(return_data.size)) + 420
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(arg1))
                                    if address(arg6):
                                        call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], arg5, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 420 len 64]), address(arg6), block.timestamp
                                    else:
                                        call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], arg5, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 420 len 64]), address(this.address), block.timestamp
                                else:
                                    mem[(7 * ceil32(return_data.size)) + 132] = address(arg1)
                                    mem[(7 * ceil32(return_data.size)) + 164] = -1
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), -1
                                    mem[(7 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(8 * ceil32(return_data.size)) + 160] = address(arg2)
                                    mem[(8 * ceil32(return_data.size)) + 192] = address(arg3)
                                    mem[(8 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                                    idx = 0
                                    s = (8 * ceil32(return_data.size)) + 160
                                    t = (8 * ceil32(return_data.size)) + 420
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(arg1))
                                    if address(arg6):
                                        call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], arg5, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 420 len 64]), address(arg6), block.timestamp
                                    else:
                                        call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], arg5, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 420 len 64]), address(this.address), block.timestamp
                            else:
                                if ext_call.return_data[0] >= ext_call.return_data[0]:
                                    mem[(7 * ceil32(return_data.size)) + 160] = address(arg2)
                                    mem[(7 * ceil32(return_data.size)) + 192] = address(arg3)
                                    mem[(7 * ceil32(return_data.size)) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[(7 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                                    idx = 0
                                    s = (7 * ceil32(return_data.size)) + 160
                                    t = (7 * ceil32(return_data.size)) + 420
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(arg1))
                                    if address(arg6):
                                        call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], arg5, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 420 len 64]), address(arg6), block.timestamp
                                    else:
                                        call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], arg5, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 420 len 64]), address(this.address), block.timestamp
                                else:
                                    mem[(7 * ceil32(return_data.size)) + 132] = address(arg1)
                                    mem[(7 * ceil32(return_data.size)) + 164] = -1
                                    call address(arg2).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), -1
                                    mem[(7 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(8 * ceil32(return_data.size)) + 160] = address(arg2)
                                    mem[(8 * ceil32(return_data.size)) + 192] = address(arg3)
                                    mem[(8 * ceil32(return_data.size)) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                                    idx = 0
                                    s = (8 * ceil32(return_data.size)) + 160
                                    t = (8 * ceil32(return_data.size)) + 420
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(arg1))
                                    if address(arg6):
                                        call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], arg5, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 420 len 64]), address(arg6), block.timestamp
                                    else:
                                        call address(arg1).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], arg5, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 420 len 64]), address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        ('bool', 'ext_call.success')
}



}
