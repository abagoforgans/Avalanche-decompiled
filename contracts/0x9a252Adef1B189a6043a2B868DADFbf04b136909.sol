contract main {




// =====================  Runtime code  =====================


const PRICE = 10


uint8 stor0;
uint256 stor0;
mapping of uint8 stor1;
address stor2;
address farmingTokenAddress;
address owner;
uint8 stor5; offset 160
uint128 stor5; offset 160
address stor5;

function investor(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function sub_423a481a(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function getStatus() payable {
    return bool(uint8(stor5.field_160))
}

function owner() payable {
    return owner
}

function farmingToken() payable {
    return farmingTokenAddress
}

function _fallback() payable {
    revert
}

function setStart() payable {
    if owner != msg.sender:
        revert with 0, '!owner'
    Mask(96, 0, stor5.field_160) = 1
}

function sub_a9883aa2(?) payable {
    if owner != msg.sender:
        revert with 0, '!owner'
    Mask(96, 0, stor5.field_160) = 0
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(stor5.field_0) != msg.sender:
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
        args address(stor5.field_0), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function invest() payable {
    if tx.origin != msg.sender:
        revert with 0, '!EOA'
    if not uint8(stor5.field_160):
        revert with 0, '!start'
    if stor1[address(msg.sender)]:
        revert with 0, 'invested'
    require ext_code.size(farmingTokenAddress)
    staticcall farmingTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 10^12:
        revert with 0, 'sold out'
    require ext_code.size(stor2)
    staticcall stor2.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint256(stor0) > 400:
        require ext_code.size(farmingTokenAddress)
        call farmingTokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] / 5 * 10^9
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(stor2)
        if uint256(stor0) <= 4:
            call stor2.0xa9059cbb with:
                 gas gas_remaining wei
                args owner, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(farmingTokenAddress)
            call farmingTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0] / 5 * 10^9
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        else:
            if not stor0 % 4:
                call stor2.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(stor5.field_0), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(farmingTokenAddress)
                call farmingTokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0] / 5 * 10^9
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                call stor2.0xa9059cbb with:
                     gas gas_remaining wei
                    args owner, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(farmingTokenAddress)
                call farmingTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0] / 5 * 10^9
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    stor1[address(msg.sender)] = 1
    uint256(stor0)++
    emit Invest()
}



}
