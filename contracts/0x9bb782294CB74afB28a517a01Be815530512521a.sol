contract main {




// =====================  Runtime code  =====================


#
#  - sub_9e79eaa5(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor104;
array of struct stor105;
address underlyingTokenAddress;
address poolAddress;
uint256 cash;
uint256 liability;
uint128 stor155; offset 160
uint256 stor155;
address sub_7e1317faAddress;
uint256 maxSupply;

function pool() payable {
    return poolAddress
}

function totalSupply() payable {
    return totalSupply
}

function underlyingToken() payable {
    return underlyingTokenAddress
}

function liability() payable {
    return liability
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_7e1317fa(?) payable {
    return sub_7e1317faAddress
}

function owner() payable {
    return owner
}

function cash() payable {
    return cash
}

function maxSupply() payable {
    return maxSupply
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
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

function setMaxSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit MaxSupplyUpdated(maxSupply, arg1);
    maxSupply = arg1
}

function setPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'PTL:Pool address cannot be zero'
    emit PoolUpdated(poolAddress, arg1);
    poolAddress = arg1
}

function underlyingTokenBalance() payable {
    require ext_code.size(underlyingTokenAddress)
    staticcall underlyingTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_95d6f7b9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PTL:Aggregate Account address cannot be zero'
    sub_7e1317faAddress = address(arg1)
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

function decimals() payable {
    require ext_code.size(underlyingTokenAddress)
    staticcall underlyingTokenAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return ext_call.return_data[31 len 1]
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

function addCash(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if poolAddress != msg.sender:
        revert with 0, 'PTL:FORBIDDEN'
    if cash > !arg1:
        revert with 'NH{q', 17
    cash += arg1
    require ext_code.size(this.address)
    staticcall this.address.0x961be391 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 'NH{q', 17
    emit 0x4da41205: ext_call.return_data[0] - arg1, arg1
}

function addLiability(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if poolAddress != msg.sender:
        revert with 0, 'PTL:FORBIDDEN'
    if liability > !arg1:
        revert with 'NH{q', 17
    liability += arg1
    require ext_code.size(this.address)
    staticcall this.address.0x705727b5 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 'NH{q', 17
    emit 0x2b74a49d: ext_call.return_data[0] - arg1, arg1
}

function removeCash(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if poolAddress != msg.sender:
        revert with 0, 'PTL:FORBIDDEN'
    if cash < arg1:
        revert with 0, 'PTL:INSUFFICIENT_CASH'
    cash -= arg1
    require ext_code.size(this.address)
    staticcall this.address.0x961be391 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !arg1:
        revert with 'NH{q', 17
    emit 0xf15a9544: ext_call.return_data[0] + arg1, arg1
}

function removeLiability(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if poolAddress != msg.sender:
        revert with 0, 'PTL:FORBIDDEN'
    if liability < arg1:
        revert with 0, 'PTL:INSUFFICIENT_LIABILITY'
    liability -= arg1
    require ext_code.size(this.address)
    staticcall this.address.0x705727b5 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !arg1:
        revert with 'NH{q', 17
    emit 0xdf20ac3c: ext_call.return_data[0] + arg1, arg1
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if poolAddress != msg.sender:
        revert with 0, 'PTL:FORBIDDEN'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 'NH{q', 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 'NH{q', 17
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
        revert with 'NH{q', 17
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
        revert with 'NH{q', 17
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

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if poolAddress != msg.sender:
        revert with 0, 'PTL:FORBIDDEN'
    require ext_code.size(this.address)
    staticcall this.address.0xd5abeb01 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(this.address)
        staticcall this.address.0xd5abeb01 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(this.address)
        staticcall this.address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg2 > !ext_call.return_data[0]:
            revert with 'NH{q', 17
        if arg2 + ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'PTL:MAX_SUPPLY_REACHED'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !arg2:
        revert with 'NH{q', 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > !arg2:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function name() payable {
    if bool(stor104.length):
        if bool(stor104.length) == uint255(stor104.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if bool(stor104.length):
            if bool(stor104.length) == uint255(stor104.length) * 0.5 < 32:
                revert with 'NH{q', 34
            if Mask(256, -1, stor104.length):
                if 31 < uint255(stor104.length) * 0.5:
                    mem[128] = uint256(stor104.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor104.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor104[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor104.length), data=mem[128 len ceil32(uint255(stor104.length) * 0.5)])
                mem[128] = 256 * stor104.length.field_8
        else:
            if bool(stor104.length) == stor104.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor104.length.field_1:
                if 31 < stor104.length.field_1:
                    mem[128] = uint256(stor104.field_0)
                    idx = 128
                    s = 0
                    while stor104.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor104[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor104.length), data=mem[128 len ceil32(uint255(stor104.length) * 0.5)])
                mem[128] = 256 * stor104.length.field_8
        mem[ceil32(uint255(stor104.length) * 0.5) + 192 len ceil32(uint255(stor104.length) * 0.5)] = mem[128 len ceil32(uint255(stor104.length) * 0.5)]
        if ceil32(uint255(stor104.length) * 0.5) > uint255(stor104.length) * 0.5:
            mem[(uint255(stor104.length) * 0.5) + ceil32(uint255(stor104.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor104.length), data=mem[128 len ceil32(uint255(stor104.length) * 0.5)], mem[(2 * ceil32(uint255(stor104.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor104.length) * 0.5)]), 
    if bool(stor104.length) == stor104.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor104.length):
        if bool(stor104.length) == uint255(stor104.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if Mask(256, -1, stor104.length):
            if 31 < uint255(stor104.length) * 0.5:
                mem[128] = uint256(stor104.field_0)
                idx = 128
                s = 0
                while (uint255(stor104.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor104[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor104.length % 128, data=mem[128 len ceil32(stor104.length.field_1)])
            mem[128] = 256 * stor104.length.field_8
    else:
        if bool(stor104.length) == stor104.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor104.length.field_1:
            if 31 < stor104.length.field_1:
                mem[128] = uint256(stor104.field_0)
                idx = 128
                s = 0
                while stor104.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor104[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor104.length % 128, data=mem[128 len ceil32(stor104.length.field_1)])
            mem[128] = 256 * stor104.length.field_8
    mem[ceil32(stor104.length.field_1) + 192 len ceil32(stor104.length.field_1)] = mem[128 len ceil32(stor104.length.field_1)]
    if ceil32(stor104.length.field_1) > stor104.length.field_1:
        mem[stor104.length.field_1 + ceil32(stor104.length.field_1) + 192] = 0
    return Array(len=stor104.length % 128, data=mem[128 len ceil32(stor104.length.field_1)], mem[(2 * ceil32(stor104.length.field_1)) + 192 len 2 * ceil32(stor104.length.field_1)]), 
}

function symbol() payable {
    if bool(stor105.length):
        if bool(stor105.length) == uint255(stor105.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if bool(stor105.length):
            if bool(stor105.length) == uint255(stor105.length) * 0.5 < 32:
                revert with 'NH{q', 34
            if Mask(256, -1, stor105.length):
                if 31 < uint255(stor105.length) * 0.5:
                    mem[128] = uint256(stor105.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor105.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor105[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor105.length), data=mem[128 len ceil32(uint255(stor105.length) * 0.5)])
                mem[128] = 256 * stor105.length.field_8
        else:
            if bool(stor105.length) == stor105.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor105.length.field_1:
                if 31 < stor105.length.field_1:
                    mem[128] = uint256(stor105.field_0)
                    idx = 128
                    s = 0
                    while stor105.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor105[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor105.length), data=mem[128 len ceil32(uint255(stor105.length) * 0.5)])
                mem[128] = 256 * stor105.length.field_8
        mem[ceil32(uint255(stor105.length) * 0.5) + 192 len ceil32(uint255(stor105.length) * 0.5)] = mem[128 len ceil32(uint255(stor105.length) * 0.5)]
        if ceil32(uint255(stor105.length) * 0.5) > uint255(stor105.length) * 0.5:
            mem[(uint255(stor105.length) * 0.5) + ceil32(uint255(stor105.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor105.length), data=mem[128 len ceil32(uint255(stor105.length) * 0.5)], mem[(2 * ceil32(uint255(stor105.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor105.length) * 0.5)]), 
    if bool(stor105.length) == stor105.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor105.length):
        if bool(stor105.length) == uint255(stor105.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if Mask(256, -1, stor105.length):
            if 31 < uint255(stor105.length) * 0.5:
                mem[128] = uint256(stor105.field_0)
                idx = 128
                s = 0
                while (uint255(stor105.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor105[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor105.length % 128, data=mem[128 len ceil32(stor105.length.field_1)])
            mem[128] = 256 * stor105.length.field_8
    else:
        if bool(stor105.length) == stor105.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor105.length.field_1:
            if 31 < stor105.length.field_1:
                mem[128] = uint256(stor105.field_0)
                idx = 128
                s = 0
                while stor105.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor105[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor105.length % 128, data=mem[128 len ceil32(stor105.length.field_1)])
            mem[128] = 256 * stor105.length.field_8
    mem[ceil32(stor105.length.field_1) + 192 len ceil32(stor105.length.field_1)] = mem[128 len ceil32(stor105.length.field_1)]
    if ceil32(stor105.length.field_1) > stor105.length.field_1:
        mem[stor105.length.field_1 + ceil32(stor105.length.field_1) + 192] = 0
    return Array(len=stor105.length % 128, data=mem[128 len ceil32(stor105.length.field_1)], mem[(2 * ceil32(stor105.length.field_1)) + 192 len 2 * ceil32(stor105.length.field_1)]), 
}

function sub_613d25bb(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 98 < 97 or ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 > test266151307():
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 == address(arg4)
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    if not address(arg1):
        revert with 0, 'PTL:Token address cannot be zero'
    if not address(arg4):
        revert with 0, 'PTL:Aggregate account address cannot be zero'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if ext_call.return_data[31 len 1] > 18:
        revert with 0, 'PLT:Decimals must be under 18'
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
    else:
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
            else:
                uint16(stor0.field_0) = 257
                uint8(stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                else:
                    uint16(stor0.field_0) = 257
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0, 'Initializable: contract is already initialized'
                    if not uint8(stor0.field_8):
                        uint16(stor0.field_0) = 257
                        if uint8(stor0.field_0):
                            revert with 0, 'Initializable: contract is already initialized'
                        if not uint8(stor0.field_8):
                            uint16(stor0.field_0) = 257
                            uint8(stor0.field_8) = 0
                            if uint8(stor0.field_0):
                                revert with 0, 'Initializable: contract is already initialized'
                            if not uint8(stor0.field_8):
                                uint16(stor0.field_0) = 257
    if bool(stor104.length):
        if bool(stor104.length) == uint255(stor104.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor104[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor104.length = 0
            idx = 0
            while (uint255(stor104.length) * 0.5) + 31 / 32 > idx:
                stor104[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor104.length) == stor104.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor104[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor104.length = 0
            idx = 0
            while stor104.length.field_1 + 31 / 32 > idx:
                stor104[idx].field_0 = 0
                idx = idx + 1
                continue 
    if bool(stor105.length):
        if bool(stor105.length) == uint255(stor105.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if arg3.length:
            stor105[].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor105.length = 0
            idx = 0
            while (uint255(stor105.length) * 0.5) + 31 / 32 > idx:
                stor105[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor105.length) == stor105.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg3.length:
            stor105[].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor105.length = 0
            idx = 0
            while stor105.length.field_1 + 31 / 32 > idx:
                stor105[idx].field_0 = 0
                idx = idx + 1
                continue 
    if uint8(stor0.field_8):
        uint256(stor155.field_0) = Mask(96, 0, stor155.field_160)
        underlyingTokenAddress = address(arg1)
        sub_7e1317faAddress = address(arg4)
    else:
        uint8(stor0.field_8) = 0
        uint8(stor0.field_8) = 0
        uint256(stor155.field_0) = Mask(96, 0, stor155.field_160)
        underlyingTokenAddress = address(arg1)
        sub_7e1317faAddress = address(arg4)
        uint8(stor0.field_8) = 0
}



}
