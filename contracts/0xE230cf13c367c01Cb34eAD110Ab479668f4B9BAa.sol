contract main {




// =====================  Runtime code  =====================


const sub_d46b136c(?) = 100


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
mapping of uint32 price;
address sub_66c87f6fAddress;
address sub_e152bb8fAddress;
address sub_ef929f92Address;

function sub_66c87f6f(?) payable {
    return sub_66c87f6fAddress
}

function owner() payable {
    return owner
}

function sub_b76a01a6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint256(price[arg1])
}

function sub_e152bb8f(?) payable {
    return sub_e152bb8fAddress
}

function getPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint256(price[arg1])
}

function sub_ef929f92(?) payable {
    return sub_ef929f92Address
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

function initialize(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if uint8(stor0.field_8):
        if ext_code.size(this.address) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    sub_66c87f6fAddress = arg1
    sub_e152bb8fAddress = arg2
    sub_ef929f92Address = arg3
    uint256(price[1]) = 20 * 10^18
    uint256(price[2]) = 20 * 10^18
    uint256(price[3]) = 20 * 10^18
    uint256(price[4]) = 100 * 10^18
    uint256(price[5]) = 100 * 10^18
    uint256(price[6]) = 10000 * 10^18
    uint256(price[7]) = 10000 * 10^18
    require ext_code.size(sub_ef929f92Address)
    call sub_ef929f92Address.0x17bf4727 with:
         gas gas_remaining wei
        args 0, uint32(price[1]), uint256(price[2]), uint256(price[3]), uint256(price[4]), uint256(price[5]), uint256(price[6]), uint256(price[7])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 0
}

function buyBuilding(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 <= 0:
        revert with 0, 'Wrong buiding id'
    if arg1 > 8:
        revert with 0, 'Wrong buiding id'
    if arg2 <= 0:
        revert with 0, 'Amount can not be zero.'
    if arg2 > 100:
        revert with 0, 'Buy too much'
    if not uint256(price[arg1]):
        require ext_code.size(sub_ef929f92Address)
        staticcall sub_ef929f92Address.0x5cf590d9 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(sub_e152bb8fAddress)
        call sub_e152bb8fAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, sub_ef929f92Address, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(sub_e152bb8fAddress)
        call sub_e152bb8fAddress.burnFrom(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, 0
    else:
        if not uint256(price[arg1]):
            revert with 'NH{q', 18
        if uint256(price[arg1]) * arg2 / uint256(price[arg1]) != arg2:
            revert with 0, 'Amount error'
        require ext_code.size(sub_ef929f92Address)
        staticcall sub_ef929f92Address.0x5cf590d9 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not uint256(price[arg1]) * arg2:
            require ext_code.size(sub_e152bb8fAddress)
            call sub_e152bb8fAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, sub_ef929f92Address, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(sub_e152bb8fAddress)
            if 0 <= uint256(price[arg1]) * arg2:
                call sub_e152bb8fAddress.burnFrom(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, uint256(price[arg1]) * arg2
            else:
                call sub_e152bb8fAddress.burnFrom(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, 0
        else:
            if not uint256(price[arg1]) * arg2:
                revert with 'NH{q', 18
            require ext_code.size(sub_e152bb8fAddress)
            if uint256(price[arg1]) * arg2 * ext_call.return_data[0] / uint256(price[arg1]) * arg2 == ext_call.return_data[0]:
                call sub_e152bb8fAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, sub_ef929f92Address, uint256(price[arg1]) * arg2 * ext_call.return_data[0] / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(sub_e152bb8fAddress)
                if uint256(price[arg1]) * arg2 * ext_call.return_data[0] / 100 <= uint256(price[arg1]) * arg2:
                    call sub_e152bb8fAddress.burnFrom(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, (uint256(price[arg1]) * arg2) - (uint256(price[arg1]) * arg2 * ext_call.return_data[0] / 100)
                else:
                    call sub_e152bb8fAddress.burnFrom(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0
            else:
                call sub_e152bb8fAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, sub_ef929f92Address, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(sub_e152bb8fAddress)
                if 0 <= uint256(price[arg1]) * arg2:
                    call sub_e152bb8fAddress.burnFrom(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, uint256(price[arg1]) * arg2
                else:
                    call sub_e152bb8fAddress.burnFrom(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_66c87f6fAddress)
    call sub_66c87f6fAddress.0x156e29f6 with:
         gas gas_remaining wei
        args msg.sender, arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit BuyBuilding(arg2, msg.sender, arg1);
}



}
