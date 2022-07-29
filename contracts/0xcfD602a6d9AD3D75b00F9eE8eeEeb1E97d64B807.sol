contract main {




// =====================  Runtime code  =====================


const sub_b060dd86(?) = 0x2a55205a00000000000000000000000000000000000000000000000000000000


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
address sub_c16f5156Address;

function owner() payable {
    return owner
}

function sub_c16f5156(?) payable {
    return sub_c16f5156Address
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

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    sub_c16f5156Address = arg1
}

function sub_f4f635fa(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    staticcall sub_c16f5156Address.0x2782d6c7 with:
            gas gas_remaining wei
           args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        staticcall address(arg1).supportsInterface(bytes4 arg1) with:
                gas gas_remaining wei
               args 0x2a55205a00000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            return address(ext_call.return_data[0]), ext_call.return_data[32]
        staticcall address(arg1).royaltyInfo(uint256 arg1, uint256 arg2) with:
                gas gas_remaining wei
               args arg2, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    else:
        if not ext_call.return_data[32]:
            staticcall address(arg1).supportsInterface(bytes4 arg1) with:
                    gas gas_remaining wei
                   args 0x2a55205a00000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                return address(ext_call.return_data[0]), ext_call.return_data[32]
            staticcall address(arg1).royaltyInfo(uint256 arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args arg2, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20], ext_call.return_data[32]
}



}
