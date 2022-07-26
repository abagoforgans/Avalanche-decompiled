contract main {




// =====================  Runtime code  =====================


const decimals = 18


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
mapping of uint256 allowance;
array of struct stor52;
array of struct stor53;
uint256 stor54;
address stor55;

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function totalSupply() payable {
    require ext_code.size(stor55)
    staticcall stor55.0xbd85b039 with:
            gas gas_remaining wei
           args stor54
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function pricePerShare() payable {
    require ext_code.size(stor55)
    staticcall stor55.0xf759cc3b with:
            gas gas_remaining wei
           args stor54
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor55)
    staticcall stor55.balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(arg1), stor54
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function approve(address arg1, uint256 arg2) payable {
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

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    require ext_code.size(stor55)
    staticcall stor55.balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, stor54
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'ERC20: transfer amount exceeds balance'
    require ext_code.size(stor55)
    call stor55.0xf242432a with:
         gas gas_remaining wei
        args msg.sender, address(arg1), stor54, arg2, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    require ext_code.size(stor55)
    staticcall stor55.balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(arg1), stor54
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'ERC20: transfer amount exceeds balance'
    require ext_code.size(stor55)
    call stor55.0xf242432a with:
         gas gas_remaining wei
        args address(arg1), address(arg2), stor54, arg3, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function sub_1d9a9ea2(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 == address(arg3)
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
    stor54 = arg1
    if bool(stor52.length):
        if bool(stor52.length) == uint255(stor52.length) * 0.5 < 32:
            revert with 0, 34
        if arg2.length + 6:
            stor52[].field_0 = Array(len=arg2.length + 6, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, Mask(8 * -ceil32(arg2.length) + arg2.length + 6, 208, 0x2067415641580000000000000000000000000000000000000000000000000000) >> 208)
        else:
            stor52.length = 0
            idx = 0
            while (uint255(stor52.length) * 0.5) + 31 / 32 > idx:
                stor52[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor52.length) == stor52.length.field_1 < 32:
            revert with 0, 34
        if arg2.length + 6:
            stor52[].field_0 = Array(len=arg2.length + 6, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, Mask(8 * -ceil32(arg2.length) + arg2.length + 6, 208, 0x2067415641580000000000000000000000000000000000000000000000000000) >> 208)
        else:
            stor52.length = 0
            idx = 0
            while stor52.length.field_1 + 31 / 32 > idx:
                stor52[idx].field_0 = 0
                idx = idx + 1
                continue 
    if bool(stor53.length):
        if bool(stor53.length) == uint255(stor53.length) * 0.5 < 32:
            revert with 0, 34
        bool(stor53.length) = 0
        stor53.length.field_1 = 6
        stor53.length.field_8 = 0x79794176617800000000000000000000000000000000000000000000000000
        idx = 0
        while (uint255(stor53.length) * 0.5) + 31 / 32 > idx:
            stor53[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor53.length) == stor53.length.field_1 < 32:
            revert with 0, 34
        bool(stor53.length) = 0
        stor53.length.field_1 = 6
        stor53.length.field_8 = 0x79794176617800000000000000000000000000000000000000000000000000
        idx = 0
        while stor53.length.field_1 + 31 / 32 > idx:
            stor53[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor55 = address(arg3)
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function name() payable {
    if bool(stor52.length):
        if bool(stor52.length) == uint255(stor52.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor52.length):
            if bool(stor52.length) == uint255(stor52.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor52.length):
                if 31 < uint255(stor52.length) * 0.5:
                    mem[128] = uint256(stor52.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor52.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor52[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor52.length), data=mem[128 len ceil32(uint255(stor52.length) * 0.5)])
                mem[128] = 256 * stor52.length.field_8
        else:
            if bool(stor52.length) == stor52.length.field_1 < 32:
                revert with 0, 34
            if stor52.length.field_1:
                if 31 < stor52.length.field_1:
                    mem[128] = uint256(stor52.field_0)
                    idx = 128
                    s = 0
                    while stor52.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor52[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor52.length), data=mem[128 len ceil32(uint255(stor52.length) * 0.5)])
                mem[128] = 256 * stor52.length.field_8
        mem[ceil32(uint255(stor52.length) * 0.5) + 192 len ceil32(uint255(stor52.length) * 0.5)] = mem[128 len ceil32(uint255(stor52.length) * 0.5)]
        if ceil32(uint255(stor52.length) * 0.5) > uint255(stor52.length) * 0.5:
            mem[(uint255(stor52.length) * 0.5) + ceil32(uint255(stor52.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor52.length), data=mem[128 len ceil32(uint255(stor52.length) * 0.5)], mem[(2 * ceil32(uint255(stor52.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor52.length) * 0.5)]), 
    if bool(stor52.length) == stor52.length.field_1 < 32:
        revert with 0, 34
    if bool(stor52.length):
        if bool(stor52.length) == uint255(stor52.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor52.length):
            if 31 < uint255(stor52.length) * 0.5:
                mem[128] = uint256(stor52.field_0)
                idx = 128
                s = 0
                while (uint255(stor52.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor52[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor52.length % 128, data=mem[128 len ceil32(stor52.length.field_1)])
            mem[128] = 256 * stor52.length.field_8
    else:
        if bool(stor52.length) == stor52.length.field_1 < 32:
            revert with 0, 34
        if stor52.length.field_1:
            if 31 < stor52.length.field_1:
                mem[128] = uint256(stor52.field_0)
                idx = 128
                s = 0
                while stor52.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor52[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor52.length % 128, data=mem[128 len ceil32(stor52.length.field_1)])
            mem[128] = 256 * stor52.length.field_8
    mem[ceil32(stor52.length.field_1) + 192 len ceil32(stor52.length.field_1)] = mem[128 len ceil32(stor52.length.field_1)]
    if ceil32(stor52.length.field_1) > stor52.length.field_1:
        mem[stor52.length.field_1 + ceil32(stor52.length.field_1) + 192] = 0
    return Array(len=stor52.length % 128, data=mem[128 len ceil32(stor52.length.field_1)], mem[(2 * ceil32(stor52.length.field_1)) + 192 len 2 * ceil32(stor52.length.field_1)]), 
}

function symbol() payable {
    if bool(stor53.length):
        if bool(stor53.length) == uint255(stor53.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor53.length):
            if bool(stor53.length) == uint255(stor53.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor53.length):
                if 31 < uint255(stor53.length) * 0.5:
                    mem[128] = uint256(stor53.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor53.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor53[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor53.length), data=mem[128 len ceil32(uint255(stor53.length) * 0.5)])
                mem[128] = 256 * stor53.length.field_8
        else:
            if bool(stor53.length) == stor53.length.field_1 < 32:
                revert with 0, 34
            if stor53.length.field_1:
                if 31 < stor53.length.field_1:
                    mem[128] = uint256(stor53.field_0)
                    idx = 128
                    s = 0
                    while stor53.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor53[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor53.length), data=mem[128 len ceil32(uint255(stor53.length) * 0.5)])
                mem[128] = 256 * stor53.length.field_8
        mem[ceil32(uint255(stor53.length) * 0.5) + 192 len ceil32(uint255(stor53.length) * 0.5)] = mem[128 len ceil32(uint255(stor53.length) * 0.5)]
        if ceil32(uint255(stor53.length) * 0.5) > uint255(stor53.length) * 0.5:
            mem[(uint255(stor53.length) * 0.5) + ceil32(uint255(stor53.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor53.length), data=mem[128 len ceil32(uint255(stor53.length) * 0.5)], mem[(2 * ceil32(uint255(stor53.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor53.length) * 0.5)]), 
    if bool(stor53.length) == stor53.length.field_1 < 32:
        revert with 0, 34
    if bool(stor53.length):
        if bool(stor53.length) == uint255(stor53.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor53.length):
            if 31 < uint255(stor53.length) * 0.5:
                mem[128] = uint256(stor53.field_0)
                idx = 128
                s = 0
                while (uint255(stor53.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor53[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor53.length % 128, data=mem[128 len ceil32(stor53.length.field_1)])
            mem[128] = 256 * stor53.length.field_8
    else:
        if bool(stor53.length) == stor53.length.field_1 < 32:
            revert with 0, 34
        if stor53.length.field_1:
            if 31 < stor53.length.field_1:
                mem[128] = uint256(stor53.field_0)
                idx = 128
                s = 0
                while stor53.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor53[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor53.length % 128, data=mem[128 len ceil32(stor53.length.field_1)])
            mem[128] = 256 * stor53.length.field_8
    mem[ceil32(stor53.length.field_1) + 192 len ceil32(stor53.length.field_1)] = mem[128 len ceil32(stor53.length.field_1)]
    if ceil32(stor53.length.field_1) > stor53.length.field_1:
        mem[stor53.length.field_1 + ceil32(stor53.length.field_1) + 192] = 0
    return Array(len=stor53.length % 128, data=mem[128 len ceil32(stor53.length.field_1)], mem[(2 * ceil32(stor53.length.field_1)) + 192 len 2 * ceil32(stor53.length.field_1)]), 
}



}
