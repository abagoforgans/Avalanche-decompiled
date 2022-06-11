contract main {




// =====================  Runtime code  =====================


const decimals = 18

const sub_5868c32a(?) = 279800

const sub_af3c92a4(?) = 200 * 10^18

const sub_ec3b23c0(?) = 2000 * 10^18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
uint256 stor5;
address owner;
address USDCAddress;
address stor8;
uint256 salePrice;
uint256 sub_31a67448;
uint256 sub_d3ebb9de;
uint256 startBlock;
uint256 endBlock;
mapping of uint256 sub_4bfeb304;

function endBlock() payable {
    return endBlock
}

function totalSupply() payable {
    return totalSupply
}

function sub_31a67448(?) payable {
    return sub_31a67448
}

function startBlock() payable {
    return startBlock
}

function sub_4bfeb304(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4bfeb304[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function USDC() payable {
    return USDCAddress
}

function owner() payable {
    return owner
}

function sub_d3ebb9de(?) payable {
    return sub_d3ebb9de
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function salePrice() payable {
    return salePrice
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

function setStartBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.number >= startBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'cannot change start block if sale has already started'
    if block.number >= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cannot set start block in the past'
    startBlock = arg1
    if arg1 > -279801:
        revert with 0, 17
    endBlock = arg1 + 279800
    emit StartBlockChanged(arg1, arg1 + 279800);
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

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
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
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
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
            mem[(uint255(stor3.length) * 0.5) + ceil32(uint255(stor3.length) * 0.5) + 192] = 0
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
        mem[stor3.length.field_1 + ceil32(stor3.length.field_1) + 192] = 0
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
            mem[(uint255(stor4.length) * 0.5) + ceil32(uint255(stor4.length) * 0.5) + 192] = 0
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
        mem[stor4.length.field_1 + ceil32(stor4.length.field_1) + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function sub_1f5f432a(?) payable {
    require calldata.size - 4 >= 32
    if stor5 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor5 = 2
    if block.number < startBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'presale hasn't started yet, good things come to those that wait'
    if block.number >= endBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'presale has ended, come back next time!'
    if sub_31a67448 <= 0:
        revert with 0, 'No more preSelenium remains!'
    mem[100] = this.address
    require ext_code.size(stor8)
    staticcall stor8.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No more preSelenium left!'
    if arg1 <= 0:
        revert with 0, 'not enough usdc provided'
    if arg1 > sub_d3ebb9de:
        revert with 0, 'preSelenium Presale hardcap reached'
    if 200 * 10^18 <= sub_4bfeb304[msg.sender]:
        revert with 0, 'user has already purchased too much preselenium'
    if arg1 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
        revert with 0, 17
    if not salePrice:
        revert with 0, 18
    if sub_31a67448 >= 10^12 * arg1 / salePrice:
        if 10^12 * arg1 / salePrice <= 0:
            revert with 0, 'user cannot purchase 0 preselenium'
        if 10^12 * arg1 / salePrice > sub_31a67448:
            revert with 0, 1
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(stor8)
        staticcall stor8.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 10^12 * arg1 / salePrice > ext_call.return_data[0]:
            revert with 0, 1
        mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 164] = 10^12 * arg1 / salePrice
        mem[(2 * ceil32(return_data.size)) + 96] = 68
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(stor8):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, 10^12 * arg1 / salePrice, 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call stor8 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, 10^12 * arg1 / salePrice, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, 10^12 * arg1 / salePrice, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(2 * ceil32(return_data.size)) + 296] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 328] = 0xd904ef4ca577d376d00f58314a2a7a0da0ecde38
            mem[(2 * ceil32(return_data.size)) + 360] = arg1
            mem[(2 * ceil32(return_data.size)) + 260] = 100
            mem[(2 * ceil32(return_data.size)) + 292 len 4] = unknown_0x23b872dd(?????)
            mem[(2 * ceil32(return_data.size)) + 392] = 32
            mem[(2 * ceil32(return_data.size)) + 424] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(USDCAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 456 len 128] = 0, msg.sender, 0xd904ef4ca577d376d00f58314a2a7a0da0ecde38, arg1, 0
            mem[(2 * ceil32(return_data.size)) + 556] = 0
            call USDCAddress with:
               funct Mask(32, 224, 0, msg.sender, 0xd904ef4ca577d376d00f58314a2a7a0da0ecde38, arg1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, 0, msg.sender, 0xd904ef4ca577d376d00f58314a2a7a0da0ecde38, arg1, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                    if not uint32(this.address), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 488] == bool(mem[(2 * ceil32(return_data.size)) + 488])
                    if not mem[(2 * ceil32(return_data.size)) + 488]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if sub_31a67448 < 10^12 * arg1 / salePrice:
                revert with 0, 17
            sub_31a67448 -= 10^12 * arg1 / salePrice
            if sub_4bfeb304[msg.sender] > !(10^12 * arg1 / salePrice):
                revert with 0, 17
            sub_4bfeb304[msg.sender] += 10^12 * arg1 / salePrice
            emit 0x4cf8a213: msg.sender, arg1, 10^12 * arg1 / salePrice
        else:
            mem[(2 * ceil32(return_data.size)) + 260] = return_data.size
            mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                if not mem[(2 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = msg.sender
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 0xd904ef4ca577d376d00f58314a2a7a0da0ecde38
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg1
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 100
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0x23b872dd(?????)
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 32
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(USDCAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 128] = 0, msg.sender, 0xd904ef4ca577d376d00f58314a2a7a0da0ecde38, arg1, 0
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
            call USDCAddress with:
               funct Mask(32, 224, 0, msg.sender, 0xd904ef4ca577d376d00f58314a2a7a0da0ecde38, arg1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, 0, msg.sender, 0xd904ef4ca577d376d00f58314a2a7a0da0ecde38, arg1, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                    if not uint32(this.address), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if sub_31a67448 < 10^12 * arg1 / salePrice:
                    revert with 0, 17
                sub_31a67448 -= 10^12 * arg1 / salePrice
                if sub_4bfeb304[msg.sender] > !(10^12 * arg1 / salePrice):
                    revert with 0, 17
                sub_4bfeb304[msg.sender] += 10^12 * arg1 / salePrice
                emit 0x4cf8a213: msg.sender, arg1, 10^12 * arg1 / salePrice
            else:
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = return_data.size
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 462] = 32
                    mem[(4 * ceil32(return_data.size)) + 494] = 32
                    mem[(4 * ceil32(return_data.size)) + 526] = 'SafeERC20: low-level call failed'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 458
                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489])
                    if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489]:
                        mem[(4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 462] = 32
                        mem[(4 * ceil32(return_data.size)) + 494] = 42
                        mem[(4 * ceil32(return_data.size)) + 526] = 'SafeERC20: ERC20 operation did n'
                        mem[(4 * ceil32(return_data.size)) + 558] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 458
                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                if sub_31a67448 < 10^12 * arg1 / salePrice:
                    revert with 0, 17
                sub_31a67448 -= 10^12 * arg1 / salePrice
                if sub_4bfeb304[msg.sender] > !(10^12 * arg1 / salePrice):
                    revert with 0, 17
                sub_4bfeb304[msg.sender] += 10^12 * arg1 / salePrice
                mem[(4 * ceil32(return_data.size)) + 458] = msg.sender
                mem[(4 * ceil32(return_data.size)) + 490] = arg1
                mem[(4 * ceil32(return_data.size)) + 522] = 10^12 * arg1 / salePrice
                emit 0x4cf8a213: mem[(4 * ceil32(return_data.size)) + 458 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 96]
    else:
        if sub_31a67448 <= 0:
            revert with 0, 'user cannot purchase 0 preselenium'
        if sub_31a67448 > sub_31a67448:
            revert with 0, 1
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(stor8)
        staticcall stor8.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_31a67448 > ext_call.return_data[0]:
            revert with 0, 1
        mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 164] = sub_31a67448
        mem[(2 * ceil32(return_data.size)) + 96] = 68
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(stor8):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, sub_31a67448, 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call stor8 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, sub_31a67448, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, sub_31a67448, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(2 * ceil32(return_data.size)) + 296] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 328] = 0xd904ef4ca577d376d00f58314a2a7a0da0ecde38
            mem[(2 * ceil32(return_data.size)) + 360] = arg1
            mem[(2 * ceil32(return_data.size)) + 260] = 100
            mem[(2 * ceil32(return_data.size)) + 292 len 4] = unknown_0x23b872dd(?????)
            mem[(2 * ceil32(return_data.size)) + 392] = 32
            mem[(2 * ceil32(return_data.size)) + 424] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(USDCAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 456 len 128] = 0, msg.sender, 0xd904ef4ca577d376d00f58314a2a7a0da0ecde38, arg1, 0
            mem[(2 * ceil32(return_data.size)) + 556] = 0
            call USDCAddress with:
               funct Mask(32, 224, 0, msg.sender, 0xd904ef4ca577d376d00f58314a2a7a0da0ecde38, arg1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, 0, msg.sender, 0xd904ef4ca577d376d00f58314a2a7a0da0ecde38, arg1, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                    if not uint32(this.address), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 488] == bool(mem[(2 * ceil32(return_data.size)) + 488])
                    if not mem[(2 * ceil32(return_data.size)) + 488]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if sub_31a67448 < sub_31a67448:
                revert with 0, 17
            sub_31a67448 = 0
            if sub_4bfeb304[msg.sender] > !sub_31a67448:
                revert with 0, 17
            sub_4bfeb304[msg.sender] += sub_31a67448
            emit 0x4cf8a213: msg.sender, arg1, sub_31a67448
        else:
            mem[(2 * ceil32(return_data.size)) + 260] = return_data.size
            mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                if not mem[(2 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = msg.sender
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 0xd904ef4ca577d376d00f58314a2a7a0da0ecde38
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg1
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 100
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0x23b872dd(?????)
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 32
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(USDCAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 128] = 0, msg.sender, 0xd904ef4ca577d376d00f58314a2a7a0da0ecde38, arg1, 0
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
            call USDCAddress with:
               funct Mask(32, 224, 0, msg.sender, 0xd904ef4ca577d376d00f58314a2a7a0da0ecde38, arg1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, 0, msg.sender, 0xd904ef4ca577d376d00f58314a2a7a0da0ecde38, arg1, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                    if not uint32(this.address), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if sub_31a67448 < sub_31a67448:
                    revert with 0, 17
                sub_31a67448 = 0
                if sub_4bfeb304[msg.sender] > !sub_31a67448:
                    revert with 0, 17
                sub_4bfeb304[msg.sender] += sub_31a67448
                emit 0x4cf8a213: msg.sender, arg1, sub_31a67448
            else:
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = return_data.size
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 462] = 32
                    mem[(4 * ceil32(return_data.size)) + 494] = 32
                    mem[(4 * ceil32(return_data.size)) + 526] = 'SafeERC20: low-level call failed'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 458
                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489])
                    if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489]:
                        mem[(4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 462] = 32
                        mem[(4 * ceil32(return_data.size)) + 494] = 42
                        mem[(4 * ceil32(return_data.size)) + 526] = 'SafeERC20: ERC20 operation did n'
                        mem[(4 * ceil32(return_data.size)) + 558] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 458
                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                if sub_31a67448 < sub_31a67448:
                    revert with 0, 17
                sub_31a67448 = 0
                if sub_4bfeb304[msg.sender] > !sub_31a67448:
                    revert with 0, 17
                sub_4bfeb304[msg.sender] += sub_31a67448
                mem[(4 * ceil32(return_data.size)) + 458] = msg.sender
                mem[(4 * ceil32(return_data.size)) + 490] = arg1
                mem[(4 * ceil32(return_data.size)) + 522] = sub_31a67448
                emit 0x4cf8a213: mem[(4 * ceil32(return_data.size)) + 458 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 96]
    stor5 = 1
}



}
