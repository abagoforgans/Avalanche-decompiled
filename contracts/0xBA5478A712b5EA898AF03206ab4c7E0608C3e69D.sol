contract main {




// =====================  Runtime code  =====================


#
#  - giveAnyToCan(uint256 arg1, uint256 arg2)
#  - lendFraxToAMO(address arg1, uint256 arg2)
#  - receiveBackViaAMO(address arg1, uint256 arg2, bool arg3)
#  - recoverERC20(address arg1, uint256 arg2)
#  - selfBridge(uint256 arg1, uint256 arg2, bool arg3)
#  - lendFxsToAMO(address arg1, uint256 arg2)
#  - lendCollatToAMO(address arg1, uint256 arg2)
#
address owner;
address nominatedOwner;
address sub_eb33e4a9Address;
address sub_8d773203Address;
address sub_477a3bd1Address;
address sub_837184feAddress;
address collateral_tokenAddress;
address sub_da92c9e6Address;
address timelock_address;
array of struct sub_49696b20;
mapping of uint8 stor10;
mapping of uint8 stor11;
array of struct stor12;
array of address sub_20db4684;
address sub_b703ac27Address;
array of struct stor17;
mapping of uint256 sub_3001f398;
uint256 sub_4e8a0f67;
uint256 sub_3452ae2a;
mapping of uint256 sub_3906f181;
uint256 sub_8872e567;
uint256 sub_033716bc;
mapping of uint256 sub_5242e71d;
uint256 sub_33f8486f;
uint256 sub_e697af7f;
uint256 missing_decimals;

function sub_033716bc(?) payable {
    return sub_033716bc
}

function sub_20db4684(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 3
    return sub_20db4684[arg1]
}

function collateral_token() payable {
    return collateral_tokenAddress
}

function sub_2d9e6bfa(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor10[arg1])
}

function sub_3001f398(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_3001f398[arg1]
}

function sub_33f8486f(?) payable {
    return sub_33f8486f
}

function sub_3452ae2a(?) payable {
    return sub_3452ae2a
}

function sub_3906f181(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_3906f181[arg1]
}

function missing_decimals() payable {
    return missing_decimals
}

function sub_477a3bd1(?) payable {
    return sub_477a3bd1Address
}

function sub_49696b20(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_49696b20.length
    return address(sub_49696b20[arg1].field_0)
}

function sub_4e8a0f67(?) payable {
    return sub_4e8a0f67
}

function sub_5242e71d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_5242e71d[arg1]
}

function nominatedOwner() payable {
    return nominatedOwner
}

function sub_837184fe(?) payable {
    return sub_837184feAddress
}

function sub_8872e567(?) payable {
    return sub_8872e567
}

function sub_8d773203(?) payable {
    return sub_8d773203Address
}

function owner() payable {
    return owner
}

function sub_b703ac27(?) payable {
    return sub_b703ac27Address
}

function sub_bda767ab(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor11[arg1])
}

function allAMOsLength() payable {
    return sub_49696b20.length
}

function sub_da92c9e6(?) payable {
    return sub_da92c9e6Address
}

function timelock_address() payable {
    return timelock_address
}

function sub_e697af7f(?) payable {
    return sub_e697af7f
}

function sub_eb33e4a9(?) payable {
    return sub_eb33e4a9Address
}

function _fallback() payable {
    revert
}

function setTimelock(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if timelock_address != msg.sender:
            revert with 0, 'Not owner or timelock'
    timelock_address = arg1
}

function setOracleAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if timelock_address != msg.sender:
            revert with 0, 'Not owner or timelock'
    sub_da92c9e6Address = arg1
}

function nominateNewOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may perform this action'
    nominatedOwner = arg1
    emit OwnerNominated(arg1);
}

function acceptOwnership() payable {
    if nominatedOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You must be nominated before you can accept ownership'
    emit OwnerChanged(owner, nominatedOwner);
    owner = nominatedOwner
    nominatedOwner = 0
}

function getTokenType(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_eb33e4a9Address == arg1:
        return 0
    if sub_8d773203Address == arg1:
        return 0
    if sub_477a3bd1Address == arg1:
        return 1
    if sub_837184feAddress == arg1:
        return 1
    if collateral_tokenAddress != arg1:
        revert with 0, 'getTokenType: Invalid token'
    return 2
}

function burnCanonicalFxs(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if timelock_address != msg.sender:
            revert with 0, 'Not owner or timelock'
    require ext_code.size(sub_837184feAddress)
    call sub_837184feAddress.minter_burn(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function burnCanonicalFrax(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if timelock_address != msg.sender:
            revert with 0, 'Not owner or timelock'
    require ext_code.size(sub_8d773203Address)
    call sub_8d773203Address.minter_burn(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function mintCanonicalFxs(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if timelock_address != msg.sender:
            revert with 0, 'Not owner or timelock'
    require ext_code.size(sub_837184feAddress)
    call sub_837184feAddress.minter_mint(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function mintCanonicalFrax(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if timelock_address != msg.sender:
            revert with 0, 'Not owner or timelock'
    require ext_code.size(sub_8d773203Address)
    call sub_8d773203Address.minter_mint(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function removeAMO(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if timelock_address != msg.sender:
            revert with 0, 'Not owner or timelock'
    if not arg1:
        revert with 0, 'Zero address detected'
    if bool(stor11[address(arg1)]) != 1:
        revert with 0, 'Address nonexistant'
    stor11[address(arg1)] = 0
    idx = 0
    while idx < sub_49696b20.length:
        mem[0] = 9
        if address(sub_49696b20[idx].field_0) != arg1:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= sub_49696b20.length:
            revert with 'NH{q', 50
        address(sub_49696b20[idx].field_0) = 0
        emit AMORemoved(arg1);
    emit AMORemoved(arg1);
}

function collectBridgeTokens(uint256 arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    if owner != msg.sender:
        if timelock_address != msg.sender:
            revert with 0, 'Not owner or timelock'
    if not arg1:
        require ext_code.size(sub_8d773203Address)
        call sub_8d773203Address.withdrawBridgeTokens(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg2), arg3
    else:
        if arg1 != 1:
            revert with 0, 'Invalid token_type'
        require ext_code.size(sub_837184feAddress)
        call sub_837184feAddress.withdrawBridgeTokens(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addAMO(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        if timelock_address != msg.sender:
            revert with 0, 'Not owner or timelock'
    if not arg1:
        revert with 0, 'Zero address detected'
    if arg2:
        stor10[address(arg1)] = 1
    else:
        require ext_code.size(arg1)
        staticcall arg1.allDollarBalances() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
    if stor11[address(arg1)]:
        revert with 0, 'Address already exists'
    stor11[address(arg1)] = 1
    sub_49696b20.length++
    address(sub_49696b20[sub_49696b20.length].field_0) = arg1
    sub_3001f398[address(arg1)] = 0
    sub_3906f181[address(arg1)] = 0
    sub_5242e71d[address(arg1)] = 0
    emit AMOAdded(arg1);
}

function execute(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        if timelock_address != msg.sender:
            revert with 0, 'Not owner or timelock'
    mem[96 len arg3.length] = arg3[all]
    mem[arg3.length + 96] = 0
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
        args arg3[all]
    if return_data.size:
        return bool(ext_call.success), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[96] = bool(ext_call.success)
    mem[128] = 64
    mem[160] = bool(ext_call.success)
    mem[192 len ceil32(bool(ext_call.success))] = mem[128 len ceil32(bool(ext_call.success))]
    if ceil32(bool(ext_call.success)) > bool(ext_call.success):
        mem[bool(ext_call.success) + 192] = 0
    return memory
      from 96
       len ceil32(bool(ext_call.success)) + 96
}

function allAMOAddresses() payable {
    mem[64] = (32 * sub_49696b20.length) + 128
    mem[96] = sub_49696b20.length
    if not sub_49696b20.length:
        mem[(32 * sub_49696b20.length) + 128] = 32
        mem[(32 * sub_49696b20.length) + 160] = sub_49696b20.length
        idx = 0
        s = (32 * sub_49696b20.length) + 192
        t = 128
        while idx < sub_49696b20.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_49696b20.length) + 128
           len (96 * sub_49696b20.length) + 64
    mem[128] = address(sub_49696b20.field_0)
    idx = 128
    s = 0
    while (32 * sub_49696b20.length) + 96 > idx:
        mem[idx + 32] = address(sub_49696b20[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_49696b20.length) + 128] = 32
    mem[(32 * sub_49696b20.length) + 160] = sub_49696b20.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < sub_49696b20.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_49696b20.length) + -mem[64] + 192
}

function swapAnyForCanonical(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if timelock_address != msg.sender:
            revert with 0, 'Not owner or timelock'
    if arg1:
        require ext_code.size(sub_477a3bd1Address)
        call sub_477a3bd1Address.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args sub_837184feAddress, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(sub_837184feAddress)
        call sub_837184feAddress.exchangeOldForCanonical(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args sub_477a3bd1Address, arg2
    else:
        require ext_code.size(sub_eb33e4a9Address)
        call sub_eb33e4a9Address.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args sub_8d773203Address, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(sub_8d773203Address)
        call sub_8d773203Address.exchangeOldForCanonical(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args sub_eb33e4a9Address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function swapCanonicalForAny(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if timelock_address != msg.sender:
            revert with 0, 'Not owner or timelock'
    if arg1:
        require ext_code.size(sub_837184feAddress)
        call sub_837184feAddress.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args sub_837184feAddress, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(sub_837184feAddress)
        call sub_837184feAddress.exchangeCanonicalForOld(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args sub_477a3bd1Address, arg2
    else:
        require ext_code.size(sub_8d773203Address)
        call sub_8d773203Address.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args sub_8d773203Address, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(sub_8d773203Address)
        call sub_8d773203Address.exchangeCanonicalForOld(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args sub_eb33e4a9Address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function showTokenBalances() payable {
    require ext_code.size(sub_eb33e4a9Address)
    staticcall sub_eb33e4a9Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_8d773203Address)
    staticcall sub_8d773203Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_477a3bd1Address)
    staticcall sub_477a3bd1Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_837184feAddress)
    staticcall sub_837184feAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(collateral_tokenAddress)
    staticcall collateral_tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], 
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0]
}

function sub_e9967ee1(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    require arg5 + arg5.length + 36 <= calldata.size
    mem[128 len arg5.length] = arg5[all]
    if owner != msg.sender:
        if timelock_address != msg.sender:
            revert with 0, 'Not owner or timelock'
    if not address(arg1):
        revert with 0, 'Invalid bridge address'
    if not address(arg2):
        revert with 0, 'Invalid bridge address'
    if not address(arg3):
        revert with 0, 'Invalid bridge address'
    mem[ceil32(ceil32(arg5.length)) + 97] = address(arg1)
    mem[ceil32(ceil32(arg5.length)) + 129] = address(arg2)
    mem[ceil32(ceil32(arg5.length)) + 161] = address(arg3)
    s = 13
    idx = ceil32(ceil32(arg5.length)) + 97
    while ceil32(ceil32(arg5.length)) + 193 > idx:
        address(stor[s]) = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 16
    while 16 > idx:
        uint256(stor[idx]) = 0
        idx = idx + 1
        continue 
    sub_b703ac27Address = address(arg4)
    if bool(stor17.length):
        if bool(stor17.length) == uint255(stor17.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if arg5.length:
            uint256(stor17[].field_0) = Array(len=arg5.length, data=arg5[all])
        else:
            stor17.length = 0
            idx = 0
            while (uint255(stor17.length) * 0.5) + 31 / 32 > idx:
                uint256(stor17[idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor17.length) == stor17.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg5.length:
            uint256(stor17[].field_0) = Array(len=arg5.length, data=arg5[all])
        else:
            stor17.length = 0
            idx = 0
            while stor17.length.field_1 % 128 + 31 / 32 > idx:
                uint256(stor17[idx].field_0) = 0
                idx = idx + 1
                continue 
    emit BridgeInfoChanged(address rg1, address rg2, address rg3, address rg4, string rg5):
                           address(arg1),
                           address(arg2),
                           address(arg3),
                           address(arg4),
                           160,
                           arg5.length,
                           arg5[all],
                           0,
}

function name() payable {
    if bool(stor12.length):
        if bool(stor12.length) == uint255(stor12.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if bool(stor12.length):
            if bool(stor12.length) == uint255(stor12.length) * 0.5 < 32:
                revert with 'NH{q', 34
            if Mask(256, -1, stor12.length):
                if 31 < uint255(stor12.length) * 0.5:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor12.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor12[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12.length), data=mem[128 len ceil32(uint255(stor12.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor12.length.field_8)
        else:
            if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor12.length.field_1 % 128:
                if 31 < stor12.length.field_1 % 128:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while stor12.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor12[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12.length), data=mem[128 len ceil32(uint255(stor12.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor12.length.field_8)
        mem[ceil32(uint255(stor12.length) * 0.5) + 192 len ceil32(uint255(stor12.length) * 0.5)] = mem[128 len ceil32(uint255(stor12.length) * 0.5)]
        if ceil32(uint255(stor12.length) * 0.5) > uint255(stor12.length) * 0.5:
            mem[(uint255(stor12.length) * 0.5) + ceil32(uint255(stor12.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor12.length), data=mem[128 len ceil32(uint255(stor12.length) * 0.5)], mem[(2 * ceil32(uint255(stor12.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor12.length) * 0.5)]), 
    if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor12.length):
        if bool(stor12.length) == uint255(stor12.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if Mask(256, -1, stor12.length):
            if 31 < uint255(stor12.length) * 0.5:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while (uint255(stor12.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor12[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor12.length.field_8)
    else:
        if bool(stor12.length) == stor12.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor12.length.field_1 % 128:
            if 31 < stor12.length.field_1 % 128:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while stor12.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor12[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor12.length.field_8)
    mem[ceil32(stor12.length.field_1 % 128) + 192 len ceil32(stor12.length.field_1 % 128)] = mem[128 len ceil32(stor12.length.field_1 % 128)]
    if ceil32(stor12.length.field_1 % 128) > stor12.length.field_1 % 128:
        mem[stor12.length.field_1 % 128 + ceil32(stor12.length.field_1 % 128) + 192] = 0
    return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1 % 128)], mem[(2 * ceil32(stor12.length.field_1 % 128)) + 192 len 2 * ceil32(stor12.length.field_1 % 128)]), 
}

function sub_408e63bf(?) payable {
    if bool(stor17.length):
        if bool(stor17.length) == uint255(stor17.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if bool(stor17.length):
            if bool(stor17.length) == uint255(stor17.length) * 0.5 < 32:
                revert with 'NH{q', 34
            if Mask(256, -1, stor17.length):
                if 31 < uint255(stor17.length) * 0.5:
                    mem[128] = uint256(stor17.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor17.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor17[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor17.length), data=mem[128 len ceil32(uint255(stor17.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor17.length.field_8)
        else:
            if bool(stor17.length) == stor17.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor17.length.field_1 % 128:
                if 31 < stor17.length.field_1 % 128:
                    mem[128] = uint256(stor17.field_0)
                    idx = 128
                    s = 0
                    while stor17.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor17[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor17.length), data=mem[128 len ceil32(uint255(stor17.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor17.length.field_8)
        mem[ceil32(uint255(stor17.length) * 0.5) + 192 len ceil32(uint255(stor17.length) * 0.5)] = mem[128 len ceil32(uint255(stor17.length) * 0.5)]
        if ceil32(uint255(stor17.length) * 0.5) > uint255(stor17.length) * 0.5:
            mem[(uint255(stor17.length) * 0.5) + ceil32(uint255(stor17.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor17.length), data=mem[128 len ceil32(uint255(stor17.length) * 0.5)], mem[(2 * ceil32(uint255(stor17.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor17.length) * 0.5)]), 
    if bool(stor17.length) == stor17.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor17.length):
        if bool(stor17.length) == uint255(stor17.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if Mask(256, -1, stor17.length):
            if 31 < uint255(stor17.length) * 0.5:
                mem[128] = uint256(stor17.field_0)
                idx = 128
                s = 0
                while (uint255(stor17.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor17[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor17.length % 128, data=mem[128 len ceil32(stor17.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor17.length.field_8)
    else:
        if bool(stor17.length) == stor17.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor17.length.field_1 % 128:
            if 31 < stor17.length.field_1 % 128:
                mem[128] = uint256(stor17.field_0)
                idx = 128
                s = 0
                while stor17.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor17[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor17.length % 128, data=mem[128 len ceil32(stor17.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor17.length.field_8)
    mem[ceil32(stor17.length.field_1 % 128) + 192 len ceil32(stor17.length.field_1 % 128)] = mem[128 len ceil32(stor17.length.field_1 % 128)]
    if ceil32(stor17.length.field_1 % 128) > stor17.length.field_1 % 128:
        mem[stor17.length.field_1 % 128 + ceil32(stor17.length.field_1 % 128) + 192] = 0
    return Array(len=stor17.length % 128, data=mem[128 len ceil32(stor17.length.field_1 % 128)], mem[(2 * ceil32(stor17.length.field_1 % 128)) + 192 len 2 * ceil32(stor17.length.field_1 % 128)]), 
}

function showAllocations() payable {
    require ext_code.size(sub_eb33e4a9Address)
    staticcall sub_eb33e4a9Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_8d773203Address)
    staticcall sub_8d773203Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_477a3bd1Address)
    staticcall sub_477a3bd1Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_837184feAddress)
    staticcall sub_837184feAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(collateral_tokenAddress)
    staticcall collateral_tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 2 * ext_call.return_data[0] > !sub_4e8a0f67:
        revert with 'NH{q', 17
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 2 * ext_call.return_data[0] > !sub_8872e567:
        revert with 'NH{q', 17
    require ext_code.size(sub_da92c9e6Address)
    staticcall sub_da92c9e6Address.getPrice(address rg1) with:
            gas gas_remaining wei
           args sub_837184feAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (2 * ext_call.return_data[0]) + sub_8872e567 and ext_call.return_data[0] > -1 / (2 * ext_call.return_data[0]) + sub_8872e567:
        revert with 'NH{q', 17
    if ext_call.return_data[0] > !sub_33f8486f:
        revert with 'NH{q', 17
    if not missing_decimals:
        if ext_call.return_data[0] + sub_33f8486f and 1 > -1 / ext_call.return_data[0] + sub_33f8486f:
            revert with 'NH{q', 17
        if (2 * ext_call.return_data[0]) + sub_4e8a0f67 > !((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (sub_8872e567 * ext_call.return_data[0]) / 10^6):
            revert with 'NH{q', 17
        if (2 * ext_call.return_data[0]) + sub_4e8a0f67 + ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (sub_8872e567 * ext_call.return_data[0]) / 10^6) > !(ext_call.return_data[0] + sub_33f8486f):
            revert with 'NH{q', 17
        return 2 * ext_call.return_data[0], 
               sub_4e8a0f67,
               (2 * ext_call.return_data[0]) + sub_4e8a0f67,
               2 * ext_call.return_data[0],
               sub_8872e567,
               (2 * ext_call.return_data[0]) + sub_8872e567,
               (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (sub_8872e567 * ext_call.return_data[0]) / 10^6,
               ext_call.return_data[0],
               sub_33f8486f,
               ext_call.return_data[0] + sub_33f8486f,
               ext_call.return_data[0] + sub_33f8486f,
               (4 * ext_call.return_data[0]) + sub_4e8a0f67 + ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (sub_8872e567 * ext_call.return_data[0]) / 10^6) + sub_33f8486f
    if bool(bool(missing_decimals < 78)) or bool(bool(missing_decimals < 32)):
        if ext_call.return_data[0] + sub_33f8486f and 10^missing_decimals > -1 / ext_call.return_data[0] + sub_33f8486f:
            revert with 'NH{q', 17
        if (2 * ext_call.return_data[0]) + sub_4e8a0f67 > !((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (sub_8872e567 * ext_call.return_data[0]) / 10^6):
            revert with 'NH{q', 17
        if (2 * ext_call.return_data[0]) + sub_4e8a0f67 + ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (sub_8872e567 * ext_call.return_data[0]) / 10^6) > !((ext_call.return_data[0] * 10^missing_decimals) + (sub_33f8486f * 10^missing_decimals)):
            revert with 'NH{q', 17
        return 2 * ext_call.return_data[0], 
               sub_4e8a0f67,
               (2 * ext_call.return_data[0]) + sub_4e8a0f67,
               2 * ext_call.return_data[0],
               sub_8872e567,
               (2 * ext_call.return_data[0]) + sub_8872e567,
               (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (sub_8872e567 * ext_call.return_data[0]) / 10^6,
               ext_call.return_data[0],
               sub_33f8486f,
               ext_call.return_data[0] + sub_33f8486f,
               (ext_call.return_data[0] * 10^missing_decimals) + (sub_33f8486f * 10^missing_decimals),
               (2 * ext_call.return_data[0]) + sub_4e8a0f67 + ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (sub_8872e567 * ext_call.return_data[0]) / 10^6) + (ext_call.return_data[0] * 10^missing_decimals) + (sub_33f8486f * 10^missing_decimals)
    s = 10
    t = 1
    idx = missing_decimals
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
    if ext_call.return_data[0] + sub_33f8486f and s * t > -1 / ext_call.return_data[0] + sub_33f8486f:
        revert with 'NH{q', 17
    if (2 * ext_call.return_data[0]) + sub_4e8a0f67 > !((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (sub_8872e567 * ext_call.return_data[0]) / 10^6):
        revert with 'NH{q', 17
    if (2 * ext_call.return_data[0]) + sub_4e8a0f67 + ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (sub_8872e567 * ext_call.return_data[0]) / 10^6) > !((ext_call.return_data[0] * s * t) + (sub_33f8486f * s * t)):
        revert with 'NH{q', 17
    return 2 * ext_call.return_data[0], 
           sub_4e8a0f67,
           (2 * ext_call.return_data[0]) + sub_4e8a0f67,
           2 * ext_call.return_data[0],
           sub_8872e567,
           (2 * ext_call.return_data[0]) + sub_8872e567,
           (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (sub_8872e567 * ext_call.return_data[0]) / 10^6,
           ext_call.return_data[0],
           sub_33f8486f,
           ext_call.return_data[0] + sub_33f8486f,
           (ext_call.return_data[0] * s * t) + (sub_33f8486f * s * t),
           (2 * ext_call.return_data[0]) + sub_4e8a0f67 + ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (sub_8872e567 * ext_call.return_data[0]) / 10^6) + (ext_call.return_data[0] * s * t) + (sub_33f8486f * s * t)
}

function allBalances() payable {
    mem[644] = this.address
    require ext_code.size(sub_eb33e4a9Address)
    staticcall sub_eb33e4a9Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[640] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[480] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 644] = this.address
    require ext_code.size(sub_8d773203Address)
    staticcall sub_8d773203Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 640] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[512] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 644] = this.address
    require ext_code.size(sub_477a3bd1Address)
    staticcall sub_477a3bd1Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[544] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 644] = this.address
    require ext_code.size(sub_837184feAddress)
    staticcall sub_837184feAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[576] = ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 644] = this.address
    require ext_code.size(collateral_tokenAddress)
    staticcall collateral_tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(6 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[608] = ext_call.return_data[0]
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 'NH{q', 17
    mem[96] = 2 * ext_call.return_data[0]
    mem[128] = sub_4e8a0f67
    if 2 * ext_call.return_data[0] > !sub_4e8a0f67:
        revert with 'NH{q', 17
    mem[160] = (2 * ext_call.return_data[0]) + sub_4e8a0f67
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 'NH{q', 17
    mem[192] = 2 * ext_call.return_data[0]
    mem[224] = sub_8872e567
    if 2 * ext_call.return_data[0] > !sub_8872e567:
        revert with 'NH{q', 17
    mem[256] = (2 * ext_call.return_data[0]) + sub_8872e567
    mem[(7 * ceil32(return_data.size)) + 644] = sub_837184feAddress
    require ext_code.size(sub_da92c9e6Address)
    staticcall sub_da92c9e6Address.getPrice(address rg1) with:
            gas gas_remaining wei
           args sub_837184feAddress
    mem[(7 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (8 * ceil32(return_data.size)) + 640
    require return_data.size >= 32
    if (2 * ext_call.return_data[0]) + sub_8872e567 and ext_call.return_data[0] > -1 / (2 * ext_call.return_data[0]) + sub_8872e567:
        revert with 'NH{q', 17
    mem[288] = (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (sub_8872e567 * ext_call.return_data[0]) / 10^6
    mem[320] = ext_call.return_data[0]
    mem[352] = sub_33f8486f
    if ext_call.return_data[0] > !sub_33f8486f:
        revert with 'NH{q', 17
    mem[384] = ext_call.return_data[0] + sub_33f8486f
    if not missing_decimals:
        if ext_call.return_data[0] + sub_33f8486f and 1 > -1 / ext_call.return_data[0] + sub_33f8486f:
            revert with 'NH{q', 17
        mem[416] = ext_call.return_data[0] + sub_33f8486f
        if (2 * ext_call.return_data[0]) + sub_4e8a0f67 > !((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (sub_8872e567 * ext_call.return_data[0]) / 10^6):
            revert with 'NH{q', 17
        if (2 * ext_call.return_data[0]) + sub_4e8a0f67 + ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (sub_8872e567 * ext_call.return_data[0]) / 10^6) > !(ext_call.return_data[0] + sub_33f8486f):
            revert with 'NH{q', 17
        mem[448] = (4 * ext_call.return_data[0]) + sub_4e8a0f67 + ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (sub_8872e567 * ext_call.return_data[0]) / 10^6) + sub_33f8486f
        idx = 1
        s = mem[448]
        t = mem[384]
        u = mem[256]
        v = mem[160]
        while idx < sub_49696b20.length:
            mem[0] = 9
            if not address(sub_49696b20[idx].field_0):
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                t = t
                u = u
                v = v
                continue 
            if idx >= sub_49696b20.length:
                revert with 'NH{q', 50
            mem[0] = address(sub_49696b20[idx].field_0)
            mem[32] = 10
            if stor10[address(stor9[idx].field_0)]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                t = t
                u = u
                v = v
                continue 
            if idx >= sub_49696b20.length:
                revert with 'NH{q', 50
            mem[0] = 9
            require ext_code.size(address(sub_49696b20[idx].field_0))
            staticcall address(sub_49696b20[idx].field_0).allDollarBalances() with:
                    gas gas_remaining wei
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _113 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            if v > !mem[_113]:
                revert with 'NH{q', 17
            if u > !mem[_113 + 32]:
                revert with 'NH{q', 17
            if t > !mem[_113 + 64]:
                revert with 'NH{q', 17
            if s > !mem[_113 + 96]:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[_113 + 96]
            t = t + mem[_113 + 64]
            u = u + mem[_113 + 32]
            v = v + mem[_113]
            continue 
    else:
        if bool(bool(missing_decimals < 78)) or bool(bool(missing_decimals < 32)):
            if ext_call.return_data[0] + sub_33f8486f and 10^missing_decimals > -1 / ext_call.return_data[0] + sub_33f8486f:
                revert with 'NH{q', 17
            mem[416] = (ext_call.return_data[0] * 10^missing_decimals) + (sub_33f8486f * 10^missing_decimals)
            if (2 * ext_call.return_data[0]) + sub_4e8a0f67 > !((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (sub_8872e567 * ext_call.return_data[0]) / 10^6):
                revert with 'NH{q', 17
            if (2 * ext_call.return_data[0]) + sub_4e8a0f67 + ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (sub_8872e567 * ext_call.return_data[0]) / 10^6) > !((ext_call.return_data[0] * 10^missing_decimals) + (sub_33f8486f * 10^missing_decimals)):
                revert with 'NH{q', 17
            mem[448] = (2 * ext_call.return_data[0]) + sub_4e8a0f67 + ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (sub_8872e567 * ext_call.return_data[0]) / 10^6) + (ext_call.return_data[0] * 10^missing_decimals) + (sub_33f8486f * 10^missing_decimals)
            idx = 1
            s = mem[448]
            t = mem[384]
            u = mem[256]
            v = mem[160]
            while idx < sub_49696b20.length:
                mem[0] = 9
                if not address(sub_49696b20[idx].field_0):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    t = t
                    u = u
                    v = v
                    continue 
                if idx >= sub_49696b20.length:
                    revert with 'NH{q', 50
                mem[0] = address(sub_49696b20[idx].field_0)
                mem[32] = 10
                if stor10[address(stor9[idx].field_0)]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    t = t
                    u = u
                    v = v
                    continue 
                if idx >= sub_49696b20.length:
                    revert with 'NH{q', 50
                mem[0] = 9
                require ext_code.size(address(sub_49696b20[idx].field_0))
                staticcall address(sub_49696b20[idx].field_0).allDollarBalances() with:
                        gas gas_remaining wei
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _112 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                if v > !mem[_112]:
                    revert with 'NH{q', 17
                if u > !mem[_112 + 32]:
                    revert with 'NH{q', 17
                if t > !mem[_112 + 64]:
                    revert with 'NH{q', 17
                if s > !mem[_112 + 96]:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + mem[_112 + 96]
                t = t + mem[_112 + 64]
                u = u + mem[_112 + 32]
                v = v + mem[_112]
                continue 
        else:
            s = 10
            t = 1
            idx = missing_decimals
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
            if ext_call.return_data[0] + sub_33f8486f and s * t > -1 / ext_call.return_data[0] + sub_33f8486f:
                revert with 'NH{q', 17
            mem[416] = (ext_call.return_data[0] * s * t) + (sub_33f8486f * s * t)
            if (2 * ext_call.return_data[0]) + sub_4e8a0f67 > !((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (sub_8872e567 * ext_call.return_data[0]) / 10^6):
                revert with 'NH{q', 17
            if (2 * ext_call.return_data[0]) + sub_4e8a0f67 + ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (sub_8872e567 * ext_call.return_data[0]) / 10^6) > !((ext_call.return_data[0] * s * t) + (sub_33f8486f * s * t)):
                revert with 'NH{q', 17
            mem[448] = (2 * ext_call.return_data[0]) + sub_4e8a0f67 + ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) + (sub_8872e567 * ext_call.return_data[0]) / 10^6) + (ext_call.return_data[0] * s * t) + (sub_33f8486f * s * t)
            idx = 1
            s = mem[448]
            t = mem[384]
            u = mem[256]
            v = mem[160]
            while idx < sub_49696b20.length:
                mem[0] = 9
                if not address(sub_49696b20[idx].field_0):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    t = t
                    u = u
                    v = v
                    continue 
                if idx >= sub_49696b20.length:
                    revert with 'NH{q', 50
                mem[0] = address(sub_49696b20[idx].field_0)
                mem[32] = 10
                if stor10[address(stor9[idx].field_0)]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    t = t
                    u = u
                    v = v
                    continue 
                if idx >= sub_49696b20.length:
                    revert with 'NH{q', 50
                mem[0] = 9
                require ext_code.size(address(sub_49696b20[idx].field_0))
                staticcall address(sub_49696b20[idx].field_0).allDollarBalances() with:
                        gas gas_remaining wei
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _147 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                if v > !mem[_147]:
                    revert with 'NH{q', 17
                if u > !mem[_147 + 32]:
                    revert with 'NH{q', 17
                if t > !mem[_147 + 64]:
                    revert with 'NH{q', 17
                if s > !mem[_147 + 96]:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + mem[_147 + 96]
                t = t + mem[_147 + 64]
                u = u + mem[_147 + 32]
                v = v + mem[_147]
                continue 
    return v, u, t, s
}



}
