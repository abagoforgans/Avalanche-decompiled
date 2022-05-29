contract main {




// =====================  Runtime code  =====================


address owner;
array of struct stor1;
uint256 tokenSaleStart;
uint256 tokenSaleEnd;
uint256 tokenPrice;
address sub_6bb1c296Address;
uint256 totalStaked;
uint256 sub_95cc989c;
address sub_dc817559Address;
address sub_eb47de10Address;
array of address holders;
mapping of uint256 stakedAmount;
mapping of uint256 depositStart;
mapping of uint8 stor13;
mapping of uint8 stor14;

function whitelistedAddresses(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor14[arg1])
}

function holders(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < holders.length
    return holders[arg1]
}

function tokenSaleStart() payable {
    return tokenSaleStart
}

function sub_6bb1c296(?) payable {
    return sub_6bb1c296Address
}

function tokenPrice() payable {
    return tokenPrice
}

function totalStaked() payable {
    return totalStaked
}

function owner() payable {
    return owner
}

function tokenSaleEnd() payable {
    return tokenSaleEnd
}

function sub_95cc989c(?) payable {
    return sub_95cc989c
}

function hasParticipated(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor13[arg1])
}

function sub_dc817559(?) payable {
    return sub_dc817559Address
}

function sub_eb47de10(?) payable {
    return sub_eb47de10Address
}

function stakedAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stakedAmount[arg1]
}

function depositStart(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return depositStart[arg1]
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

function sub_48cedf85(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenPrice = arg1
}

function addUser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor14[address(arg1)] = 1
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

function sub_440a4f89(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_6bb1c296Address)
    staticcall sub_6bb1c296Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_6bb1c296Address)
    call sub_6bb1c296Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Failed to transfer MIM from Contract to Treasury'
}

function stakeTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 <= 0:
        revert with 0, 'The Amount Staked Cannot be 0'
    if arg1 < 10^16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Error, deposit must be >= 0.1 MIM'
    if block.timestamp > tokenSaleEnd:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Error, Token Sale has been completed'
    if not tokenPrice:
        revert with 'NH{q', 18
    require ext_code.size(sub_dc817559Address)
    staticcall sub_dc817559Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1 / tokenPrice:
        revert with 0, 'There is Not Enough BNZO to Fulfil Request'
    require ext_code.size(sub_6bb1c296Address)
    call sub_6bb1c296Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Failed to transfer MIM to Treasury'
    require ext_code.size(sub_dc817559Address)
    call sub_dc817559Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1 / tokenPrice
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Failed to transfer BNZO token to user'
    emit BuyTokens(msg.sender, arg1, arg1 / tokenPrice);
    if depositStart[address(msg.sender)] > -block.timestamp - 1:
        revert with 'NH{q', 17
    depositStart[address(msg.sender)] += block.timestamp
    if totalStaked > -arg1 - 1:
        revert with 'NH{q', 17
    totalStaked += arg1
    if sub_95cc989c > -2:
        revert with 'NH{q', 17
    sub_95cc989c++
    if stakedAmount[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    stakedAmount[address(msg.sender)] += arg1
    stor13[address(msg.sender)] = 1
    holders.length++
    holders[holders.length] = msg.sender
}

function name() payable {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}



}
