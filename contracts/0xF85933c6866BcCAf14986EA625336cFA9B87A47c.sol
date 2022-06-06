contract main {




// =====================  Runtime code  =====================


const PRICE = 10


uint8 stor0;
uint256 count;
mapping of uint8 stor1;
mapping of uint8 stor2;
address stor3;
address farmingTokenAddress;
address owner;
uint8 stor6; offset 160
uint128 stor6; offset 160
address stor6;

function investor(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function sub_423a481a(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function getStatus() payable {
    return bool(uint8(stor6.field_160))
}

function owner() payable {
    return owner
}

function whitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function getCount() payable {
    return uint256(count)
}

function farmingToken() payable {
    return farmingTokenAddress
}

function getWhitelistStatus(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[address(arg1)])
}

function _fallback() payable {
    revert
}

function setStart() payable {
    if owner != msg.sender:
        revert with 0, '!owner'
    Mask(96, 0, stor6.field_160) = 1
}

function sub_a9883aa2(?) payable {
    if owner != msg.sender:
        revert with 0, '!owner'
    Mask(96, 0, stor6.field_160) = 0
}

function setWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!owner'
    stor2[address(arg1)] = 1
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(stor6.field_0) != msg.sender:
        revert with 0, '!base'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(stor6.field_0), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function invest() payable {
    if tx.origin != msg.sender:
        revert with 0, '!EOA'
    if not uint8(stor6.field_160):
        revert with 0, '!start'
    if not stor2[address(msg.sender)]:
        revert with 0, 'not whitelisted'
    if stor1[address(msg.sender)]:
        revert with 0, 'invested'
    if uint256(count) >= 150:
        revert with 0, 'sold out'
    require ext_code.size(stor3)
    staticcall stor3.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor3)
    call stor3.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint256(count) <= 100:
        if uint256(count) <= 4:
            require ext_code.size(stor3)
            call stor3.0xa9059cbb with:
                 gas gas_remaining wei
                args owner, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        else:
            if stor0 % 4:
                require ext_code.size(stor3)
                call stor3.0xa9059cbb with:
                     gas gas_remaining wei
                    args owner, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    require ext_code.size(farmingTokenAddress)
    call farmingTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 125 * 10^9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor1[address(msg.sender)] = 1
    uint256(count)++
    emit Invest()
}



}
