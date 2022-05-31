contract main {




// =====================  Runtime code  =====================


#
#  - enter(uint256 arg1)
#  - sub_edada2ff(?)
#
const sub_1978c251(?) = 10000

const sub_1f304df0(?) = 2

const decimals = 18

const wbtc = 0x50b7545627a5162f82a992c33b87adc75187b218

const usdc = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664

const sub_ab28c6d7(?) = 10^10

const dai = 0xd586e7f844cea2f87f50152665bcbc2c279d8d70


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor4;
array of struct stor5;
address sub_9da9c4f7Address;
address aaveLendingPoolAddress;
address sub_08bfa40aAddress;
uint16 sub_ec921dc1; offset 160
address dataProviderAddress;
address relayerAddress;
address swapRouterAddress;
uint256 stor12;

function sub_08bfa40a(?) payable {
    return sub_08bfa40aAddress
}

function totalSupply() payable {
    return totalSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function relayer() payable {
    return relayerAddress
}

function owner() payable {
    return owner
}

function sub_9da9c4f7(?) payable {
    return sub_9da9c4f7Address
}

function dataProvider() payable {
    return dataProviderAddress
}

function swapRouter() payable {
    return swapRouterAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function aaveLendingPool() payable {
    return aaveLendingPoolAddress
}

function sub_ec921dc1(?) payable {
    return sub_ec921dc1
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

function setRelayer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    relayerAddress = arg1
}

function sub_45325ee3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ec921dc1 = uint16(arg1)
}

function setAddressProvider(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_08bfa40aAddress = arg1
}

function sub_cc01f875(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    dataProviderAddress = address(arg1)
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
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_392e059d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(aaveLendingPoolAddress)
    call aaveLendingPoolAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args 0x50b7545627a5162f82a992c33b87adc75187b218, arg1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] > -arg3 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function sub_ee86258b(?) payable {
    require ext_code.size(dataProviderAddress)
    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
            gas gas_remaining wei
           args 0x50b7545627a5162f82a992c33b87adc75187b218, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[251 len 5]
    require ext_call.return_data[256] == bool(ext_call.return_data[256])
    require ext_code.size(0x50b7545627a5162f82a992c33b87adc75187b218)
    staticcall 0x50b7545627a5162f82a992c33b87adc75187b218.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    return (2 * ext_call.return_data[0])
}

function sub_28587a66(?) payable {
    require ext_code.size(dataProviderAddress)
    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
            gas gas_remaining wei
           args 0xd586e7f844cea2f87f50152665bcbc2c279d8d70, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[251 len 5]
    require ext_call.return_data[256] == bool(ext_call.return_data[256])
    require ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70)
    staticcall 0xd586e7f844cea2f87f50152665bcbc2c279d8d70.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -ext_call.return_data[64] - 1:
        revert with 'NH{q', 17
    return (ext_call.return_data[0] + ext_call.return_data[64])
}

function leverage() payable {
    if relayerAddress != msg.sender:
        require msg.sender == owner
    require ext_code.size(aaveLendingPoolAddress)
    staticcall aaveLendingPoolAddress.getUserAccountData(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    if ext_call.return_data[32] and 10000 > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if sub_ec921dc1 <= 10000 * ext_call.return_data[32] / ext_call.return_data[0]:
        revert with 0, 'LTV too high'
    if ext_call.return_data[0] and sub_ec921dc1 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] * sub_ec921dc1 / 10000 <= ext_call.return_data[32]:
        revert with 0, 'Debt to high'
    if ext_call.return_data[0] * sub_ec921dc1 / 10000 < ext_call.return_data[32]:
        revert with 'NH{q', 17
    if (ext_call.return_data[0] * sub_ec921dc1 / 10000) - ext_call.return_data[32] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
        revert with 'NH{q', 17
    require ext_code.size(aaveLendingPoolAddress)
    call aaveLendingPoolAddress.borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
         gas gas_remaining wei
        args 0xd586e7f844cea2f87f50152665bcbc2c279d8d70, (10^10 * ext_call.return_data[0] * sub_ec921dc1 / 10000) - (10^10 * ext_call.return_data[32]), 2, 0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_9da9c4f7Address)
    call sub_9da9c4f7Address.0xb6b55f25 with:
         gas gas_remaining wei
        args ((10^10 * ext_call.return_data[0] * sub_ec921dc1 / 10000) - (10^10 * ext_call.return_data[32]))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deleverage() payable {
    if relayerAddress != msg.sender:
        require msg.sender == owner
    require ext_code.size(aaveLendingPoolAddress)
    staticcall aaveLendingPoolAddress.getUserAccountData(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    if ext_call.return_data[32] and 10000 > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 10000 * ext_call.return_data[32] / ext_call.return_data[0] <= sub_ec921dc1:
        revert with 0, 'LTV too low'
    if ext_call.return_data[0] and sub_ec921dc1 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] < ext_call.return_data[0] * sub_ec921dc1 / 10000:
        revert with 'NH{q', 17
    if ext_call.return_data[32] - (ext_call.return_data[0] * sub_ec921dc1 / 10000) > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
        revert with 'NH{q', 17
    require ext_code.size(sub_9da9c4f7Address)
    staticcall sub_9da9c4f7Address.getPricePerFullShare() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if (10^10 * ext_call.return_data[32]) - (10^10 * ext_call.return_data[0] * sub_ec921dc1 / 10000) and 10^18 > -1 / (10^10 * ext_call.return_data[32]) - (10^10 * ext_call.return_data[0] * sub_ec921dc1 / 10000):
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    require ext_code.size(sub_9da9c4f7Address)
    call sub_9da9c4f7Address.0x2e1a7d4d with:
         gas gas_remaining wei
        args ((10000000000 * 10^18 * ext_call.return_data[32]) - (10000000000 * 10^18 * ext_call.return_data[0] * sub_ec921dc1 / 10000) / ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70)
    staticcall 0xd586e7f844cea2f87f50152665bcbc2c279d8d70.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(aaveLendingPoolAddress)
    call aaveLendingPoolAddress.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
         gas gas_remaining wei
        args 0xd586e7f844cea2f87f50152665bcbc2c279d8d70, ext_call.return_data[0], 2, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
}

function name() payable {
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor4.length):
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
        if ceil32(stor4.length.field_1) > stor4.length.field_1:
            mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
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

function symbol() payable {
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor5.length):
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
        if ceil32(stor5.length.field_1) > stor5.length.field_1:
            mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function setFarm(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    mem[132] = arg1
    require ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70)
    staticcall 0xd586e7f844cea2f87f50152665bcbc2c279d8d70.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] != -1:
        mem[ceil32(return_data.size) + 100] = this.address
        mem[ceil32(return_data.size) + 132] = arg1
        require ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70)
        staticcall 0xd586e7f844cea2f87f50152665bcbc2c279d8d70.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), arg1
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(2 * ceil32(return_data.size)) + 132] = arg1
        mem[(2 * ceil32(return_data.size)) + 164] = -1
        mem[(2 * ceil32(return_data.size)) + 96] = 68
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(arg1) << 64
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1, 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 with:
           funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require 0, address(arg1) << 64 == bool(0, address(arg1) << 64)
                if not 0, address(arg1) << 64:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                if not mem[(2 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    sub_9da9c4f7Address = arg1
}

function setSwapRouter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    mem[132] = arg1
    require ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70)
    staticcall 0xd586e7f844cea2f87f50152665bcbc2c279d8d70.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] != -1:
        mem[ceil32(return_data.size) + 100] = this.address
        mem[ceil32(return_data.size) + 132] = arg1
        require ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70)
        staticcall 0xd586e7f844cea2f87f50152665bcbc2c279d8d70.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), arg1
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(2 * ceil32(return_data.size)) + 132] = arg1
        mem[(2 * ceil32(return_data.size)) + 164] = -1
        mem[(2 * ceil32(return_data.size)) + 96] = 68
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(arg1) << 64
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1, 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 with:
           funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require 0, address(arg1) << 64 == bool(0, address(arg1) << 64)
                if not 0, address(arg1) << 64:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                if not mem[(2 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    swapRouterAddress = arg1
}

function harvest() payable {
    if msg.sender == relayerAddress:
        require ext_code.size(sub_9da9c4f7Address)
        staticcall sub_9da9c4f7Address.getPricePerFullShare() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[0] > stor12
        require ext_code.size(sub_9da9c4f7Address)
        staticcall sub_9da9c4f7Address.getPricePerFullShare() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < stor12:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(sub_9da9c4f7Address)
        staticcall sub_9da9c4f7Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] - stor12 and ext_call.return_data[0] > -1 / ext_call.return_data[0] - stor12:
            revert with 'NH{q', 17
        require ext_code.size(sub_9da9c4f7Address)
        call sub_9da9c4f7Address.0x2e1a7d4d with:
             gas gas_remaining wei
            args ((ext_call.return_data[0] * ext_call.return_data[0]) - (stor12 * ext_call.return_data[0]) / 10^18)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70)
        staticcall 0xd586e7f844cea2f87f50152665bcbc2c279d8d70.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 96] = 3
        mem[(6 * ceil32(return_data.size)) + 128] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d70
        mem[(6 * ceil32(return_data.size)) + 160] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
        mem[(6 * ceil32(return_data.size)) + 192] = 0x50b7545627a5162f82a992c33b87adc75187b218
        if block.timestamp > -11:
            revert with 'NH{q', 17
        mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(6 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 260] = 0
        mem[(6 * ceil32(return_data.size)) + 292] = 160
        mem[(6 * ceil32(return_data.size)) + 388] = 3
        idx = 0
        s = (6 * ceil32(return_data.size)) + 128
        t = (6 * ceil32(return_data.size)) + 420
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(6 * ceil32(return_data.size)) + 324] = this.address
        mem[(6 * ceil32(return_data.size)) + 356] = block.timestamp + 10
        require ext_code.size(swapRouterAddress)
        call swapRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 10, 3, mem[(6 * ceil32(return_data.size)) + 420 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (7 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _78 = mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
        require mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255 < (6 * ceil32(return_data.size)) + return_data.size + 224
        _80 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
            revert with 'NH{q', 65
        if (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
        mem[(7 * ceil32(return_data.size)) + 224] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
        require _78 + (32 * _80) + 32 <= return_data.size
        idx = 0
        s = (6 * ceil32(return_data.size)) + _78 + 256
        t = (7 * ceil32(return_data.size)) + 256
        while idx < _80:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(0x50b7545627a5162f82a992c33b87adc75187b218)
        staticcall 0x50b7545627a5162f82a992c33b87adc75187b218.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _116 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _118 = mem[_116]
        require mem[_116] == mem[_116]
        mem[mem[64] + 4] = 0x50b7545627a5162f82a992c33b87adc75187b218
        mem[mem[64] + 36] = _118
        mem[mem[64] + 68] = this.address
        mem[mem[64] + 100] = 0
        require ext_code.size(aaveLendingPoolAddress)
        call aaveLendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
             gas gas_remaining wei
            args 0x50b7545627a5162f82a992c33b87adc75187b218, _118, address(this.address), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_9da9c4f7Address)
        staticcall sub_9da9c4f7Address.getPricePerFullShare() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _128 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_128] == mem[_128]
        stor12 = mem[_128]
        emit Harvest(_118);
    else:
        require msg.sender == owner
        require ext_code.size(sub_9da9c4f7Address)
        staticcall sub_9da9c4f7Address.getPricePerFullShare() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[0] > stor12
        require ext_code.size(sub_9da9c4f7Address)
        staticcall sub_9da9c4f7Address.getPricePerFullShare() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < stor12:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(sub_9da9c4f7Address)
        staticcall sub_9da9c4f7Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] - stor12 and ext_call.return_data[0] > -1 / ext_call.return_data[0] - stor12:
            revert with 'NH{q', 17
        require ext_code.size(sub_9da9c4f7Address)
        call sub_9da9c4f7Address.0x2e1a7d4d with:
             gas gas_remaining wei
            args ((ext_call.return_data[0] * ext_call.return_data[0]) - (stor12 * ext_call.return_data[0]) / 10^18)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70)
        staticcall 0xd586e7f844cea2f87f50152665bcbc2c279d8d70.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 96] = 3
        mem[(6 * ceil32(return_data.size)) + 128] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d70
        mem[(6 * ceil32(return_data.size)) + 160] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
        mem[(6 * ceil32(return_data.size)) + 192] = 0x50b7545627a5162f82a992c33b87adc75187b218
        if block.timestamp > -11:
            revert with 'NH{q', 17
        mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(6 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 260] = 0
        mem[(6 * ceil32(return_data.size)) + 292] = 160
        mem[(6 * ceil32(return_data.size)) + 388] = 3
        idx = 0
        s = (6 * ceil32(return_data.size)) + 128
        t = (6 * ceil32(return_data.size)) + 420
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(6 * ceil32(return_data.size)) + 324] = this.address
        mem[(6 * ceil32(return_data.size)) + 356] = block.timestamp + 10
        require ext_code.size(swapRouterAddress)
        call swapRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 10, 3, mem[(6 * ceil32(return_data.size)) + 420 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (7 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _79 = mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
        require mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255 < (6 * ceil32(return_data.size)) + return_data.size + 224
        _81 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
            revert with 'NH{q', 65
        if (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
        mem[(7 * ceil32(return_data.size)) + 224] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
        require _79 + (32 * _81) + 32 <= return_data.size
        idx = 0
        s = (6 * ceil32(return_data.size)) + _79 + 256
        t = (7 * ceil32(return_data.size)) + 256
        while idx < _81:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(0x50b7545627a5162f82a992c33b87adc75187b218)
        staticcall 0x50b7545627a5162f82a992c33b87adc75187b218.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _117 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _119 = mem[_117]
        require mem[_117] == mem[_117]
        mem[mem[64] + 4] = 0x50b7545627a5162f82a992c33b87adc75187b218
        mem[mem[64] + 36] = _119
        mem[mem[64] + 68] = this.address
        mem[mem[64] + 100] = 0
        require ext_code.size(aaveLendingPoolAddress)
        call aaveLendingPoolAddress.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
             gas gas_remaining wei
            args 0x50b7545627a5162f82a992c33b87adc75187b218, _119, address(this.address), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_9da9c4f7Address)
        staticcall sub_9da9c4f7Address.getPricePerFullShare() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _129 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_129] == mem[_129]
        stor12 = mem[_129]
        emit Harvest(_119);
}

function setLendingPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    mem[132] = arg1
    require ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70)
    staticcall 0xd586e7f844cea2f87f50152665bcbc2c279d8d70.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = this.address
    mem[ceil32(return_data.size) + 132] = arg1
    if ext_call.return_data[0] == -1:
        require ext_code.size(0x50b7545627a5162f82a992c33b87adc75187b218)
        staticcall 0x50b7545627a5162f82a992c33b87adc75187b218.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), arg1
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] != -1:
            mem[(2 * ceil32(return_data.size)) + 100] = this.address
            mem[(2 * ceil32(return_data.size)) + 132] = arg1
            require ext_code.size(0x50b7545627a5162f82a992c33b87adc75187b218)
            staticcall 0x50b7545627a5162f82a992c33b87adc75187b218.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), arg1
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            mem[(4 * ceil32(return_data.size)) + 132] = arg1
            mem[(4 * ceil32(return_data.size)) + 164] = -1
            mem[(4 * ceil32(return_data.size)) + 96] = 68
            mem[(4 * ceil32(return_data.size)) + 132 len 28] = address(arg1) << 64
            mem[(4 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
            mem[(4 * ceil32(return_data.size)) + 196] = 32
            mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(0x50b7545627a5162f82a992c33b87adc75187b218) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1, 0
            mem[(4 * ceil32(return_data.size)) + 328] = 0
            call 0x50b7545627a5162f82a992c33b87adc75187b218 with:
               funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require 0, address(arg1) << 64 == bool(0, address(arg1) << 64)
                    if not 0, address(arg1) << 64:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                    if not mem[(4 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        require ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70)
        staticcall 0xd586e7f844cea2f87f50152665bcbc2c279d8d70.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), arg1
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(2 * ceil32(return_data.size)) + 132] = arg1
        mem[(2 * ceil32(return_data.size)) + 164] = -1
        mem[(2 * ceil32(return_data.size)) + 96] = 68
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(arg1) << 64
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1, 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call 0xd586e7f844cea2f87f50152665bcbc2c279d8d70 with:
           funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require 0, address(arg1) << 64 == bool(0, address(arg1) << 64)
                if not 0, address(arg1) << 64:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(2 * ceil32(return_data.size)) + 264] = this.address
            mem[(2 * ceil32(return_data.size)) + 296] = arg1
            require ext_code.size(0x50b7545627a5162f82a992c33b87adc75187b218)
            staticcall 0x50b7545627a5162f82a992c33b87adc75187b218.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), arg1
            mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] != -1:
                mem[(4 * ceil32(return_data.size)) + 264] = this.address
                mem[(4 * ceil32(return_data.size)) + 296] = arg1
                require ext_code.size(0x50b7545627a5162f82a992c33b87adc75187b218)
                staticcall 0x50b7545627a5162f82a992c33b87adc75187b218.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), arg1
                mem[(4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                mem[(6 * ceil32(return_data.size)) + 296] = arg1
                mem[(6 * ceil32(return_data.size)) + 328] = -1
                mem[(6 * ceil32(return_data.size)) + 260] = 68
                mem[(6 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
                mem[(6 * ceil32(return_data.size)) + 360] = 32
                mem[(6 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(0x50b7545627a5162f82a992c33b87adc75187b218) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(6 * ceil32(return_data.size)) + 424 len 96] = 0, address(arg1), -1, 0
                mem[(6 * ceil32(return_data.size)) + 492] = 0
                call 0x50b7545627a5162f82a992c33b87adc75187b218 with:
                   funct Mask(32, 224, 0, address(arg1), -1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(arg1), -1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require 0, address(arg1) << 64 == bool(0, address(arg1) << 64)
                        if not 0, address(arg1) << 64:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(6 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + 456] == bool(mem[(6 * ceil32(return_data.size)) + 456])
                        if not mem[(6 * ceil32(return_data.size)) + 456]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 260] = return_data.size
            mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                if not mem[(2 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = this.address
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = arg1
            require ext_code.size(0x50b7545627a5162f82a992c33b87adc75187b218)
            staticcall 0x50b7545627a5162f82a992c33b87adc75187b218.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), arg1
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] != -1:
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = this.address
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = arg1
                require ext_code.size(0x50b7545627a5162f82a992c33b87adc75187b218)
                staticcall 0x50b7545627a5162f82a992c33b87adc75187b218.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), arg1
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = arg1
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = -1
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(0x50b7545627a5162f82a992c33b87adc75187b218) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(arg1), -1, 0
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                call 0x50b7545627a5162f82a992c33b87adc75187b218 with:
                   funct Mask(32, 224, 0, address(arg1), -1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(arg1), -1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require 0, address(arg1) << 64 == bool(0, address(arg1) << 64)
                        if not 0, address(arg1) << 64:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(9 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                        if not mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                            revert with 0, 
                                        'SafeERC20: ERC20 operation did not succeed',
                                        mem[(9 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    aaveLendingPoolAddress = arg1
}

function exit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 <= balanceOf[address(msg.sender)]
    require ext_code.size(dataProviderAddress)
    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
            gas gas_remaining wei
           args 0x50b7545627a5162f82a992c33b87adc75187b218, this.address
    mem[96 len 288] = ext_call.return_data[0 len 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 288
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        require ext_call.return_data[128] == ext_call.return_data[128]
        require ext_call.return_data[160] == ext_call.return_data[160]
        require ext_call.return_data[192] == ext_call.return_data[192]
        require ext_call.return_data[224] == ext_call.return_data[251 len 5]
        require ext_call.return_data[256] == bool(ext_call.return_data[256])
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(0x50b7545627a5162f82a992c33b87adc75187b218)
        staticcall 0x50b7545627a5162f82a992c33b87adc75187b218.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                revert with 'NH{q', 17
            else:
                if uint255(ext_call.return_data[0]) and arg1 > -1 / 2 * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                else:
                    if not totalSupply:
                        revert with 'NH{q', 18
                    else:
                        require ext_code.size(dataProviderAddress)
                        staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args 0xd586e7f844cea2f87f50152665bcbc2c279d8d70, this.address
                        mem[(2 * ceil32(return_data.size)) + 96 len 288] = ext_call.return_data[0 len 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 288
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_call.return_data[32] == ext_call.return_data[32]
                            require ext_call.return_data[64] == ext_call.return_data[64]
                            require ext_call.return_data[96] == ext_call.return_data[96]
                            require ext_call.return_data[128] == ext_call.return_data[128]
                            require ext_call.return_data[160] == ext_call.return_data[160]
                            require ext_call.return_data[192] == ext_call.return_data[192]
                            require ext_call.return_data[224] == ext_call.return_data[251 len 5]
                            require ext_call.return_data[256] == bool(ext_call.return_data[256])
                            mem[(4 * ceil32(return_data.size)) + 100] = this.address
                            require ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70)
                            staticcall 0xd586e7f844cea2f87f50152665bcbc2c279d8d70.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                if ext_call.return_data[0] > -ext_call.return_data[64] - 1:
                                    revert with 'NH{q', 17
                                else:
                                    if ext_call.return_data[0] + ext_call.return_data[64] and arg1 > -1 / ext_call.return_data[0] + ext_call.return_data[64]:
                                        revert with 'NH{q', 17
                                    else:
                                        if not totalSupply:
                                            revert with 'NH{q', 18
                                        else:
                                            require ext_code.size(sub_9da9c4f7Address)
                                            staticcall sub_9da9c4f7Address.getPricePerFullShare() with:
                                                    gas gas_remaining wei
                                            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                if (ext_call.return_data[0] * arg1) + (ext_call.return_data[64] * arg1) / totalSupply and 10^18 > -1 / (ext_call.return_data[0] * arg1) + (ext_call.return_data[64] * arg1) / totalSupply:
                                                    revert with 'NH{q', 17
                                                else:
                                                    if not ext_call.return_data[0]:
                                                        revert with 'NH{q', 18
                                                    else:
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: burn from the zero address'
                                                        else:
                                                            if balanceOf[address(msg.sender)] < arg1:
                                                                revert with 0, 'ERC20: burn amount exceeds balance'
                                                            else:
                                                                balanceOf[address(msg.sender)] -= arg1
                                                                if totalSupply < arg1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    totalSupply -= arg1
                                                                    emit Transfer(arg1, msg.sender, 0);
                                                                    require ext_code.size(sub_9da9c4f7Address)
                                                                    call sub_9da9c4f7Address.0x2e1a7d4d with:
                                                                         gas gas_remaining wei
                                                                        args (10^18 * (ext_call.return_data[0] * arg1) + (ext_call.return_data[64] * arg1) / totalSupply / ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        mem[(7 * ceil32(return_data.size)) + 100] = this.address
                                                                        require ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70)
                                                                        staticcall 0xd586e7f844cea2f87f50152665bcbc2c279d8d70.0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args this.address
                                                                        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                                                            mem[(8 * ceil32(return_data.size)) + 100] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d70
                                                                            mem[(8 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                                                                            mem[(8 * ceil32(return_data.size)) + 164] = 2
                                                                            mem[(8 * ceil32(return_data.size)) + 196] = this.address
                                                                            require ext_code.size(aaveLendingPoolAddress)
                                                                            call aaveLendingPoolAddress.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                                                                 gas gas_remaining wei
                                                                                args 0xd586e7f844cea2f87f50152665bcbc2c279d8d70, ext_call.return_data[0], 2, this.address
                                                                            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                mem[(10 * ceil32(return_data.size)) + 100] = 0x50b7545627a5162f82a992c33b87adc75187b218
                                                                                mem[(10 * ceil32(return_data.size)) + 132] = (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply
                                                                                mem[(10 * ceil32(return_data.size)) + 164] = this.address
                                                                                require ext_code.size(aaveLendingPoolAddress)
                                                                                call aaveLendingPoolAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
                                                                                     gas gas_remaining wei
                                                                                    args 0x50b7545627a5162f82a992c33b87adc75187b218, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply, this.address
                                                                                mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                                                                    mem[(11 * ceil32(return_data.size)) + 132] = msg.sender
                                                                                    mem[(11 * ceil32(return_data.size)) + 164] = (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply
                                                                                    mem[(11 * ceil32(return_data.size)) + 96] = 68
                                                                                    mem[(11 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                                                                                    mem[(11 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                                                                                    mem[(11 * ceil32(return_data.size)) + 196] = 32
                                                                                    mem[(11 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                                                                                    if eth.balance(this.address) < 0:
                                                                                        revert with 0, 'Address: insufficient balance for call'
                                                                                    else:
                                                                                        if ext_code.size(0x50b7545627a5162f82a992c33b87adc75187b218) <= 0:
                                                                                            revert with 0, 'Address: call to non-contract'
                                                                                        else:
                                                                                            mem[(11 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply, 0
                                                                                            mem[(11 * ceil32(return_data.size)) + 328] = 0
                                                                                            call 0x50b7545627a5162f82a992c33b87adc75187b218 with:
                                                                                               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply, 0) >> 224
                                                                                                 gas gas_remaining wei
                                                                                                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply, 0) << 288)
                                                                                            if not return_data.size:
                                                                                                if not ext_call.success:
                                                                                                    if ext_call.return_data[0] > 0:
                                                                                                        revert with memory
                                                                                                          from 128
                                                                                                           len ext_call.return_data[0]
                                                                                                    else:
                                                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                                                else:
                                                                                                    if ext_call.return_data[0] <= 0:
                                                                                                    else:
                                                                                                        require ext_call.return_data[0] >= 32
                                                                                                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                                                                                                        if not ext_call.return_data[32]:
                                                                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                                                        else:
                                                                                            else:
                                                                                                mem[(11 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                if not ext_call.success:
                                                                                                    if return_data.size > 0:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                                                else:
                                                                                                    if return_data.size <= 0:
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        require mem[(11 * ceil32(return_data.size)) + 292] == bool(mem[(11 * ceil32(return_data.size)) + 292])
                                                                                                        if not mem[(11 * ceil32(return_data.size)) + 292]:
                                                                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                                                        else:
}



}
