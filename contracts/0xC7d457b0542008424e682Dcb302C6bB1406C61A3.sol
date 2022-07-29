contract main {




// =====================  Runtime code  =====================


const sub_33bf6156(?) = 0xd9b67a2600000000000000000000000000000000000000000000000000000000

const sub_b060dd86(?) = 0x2a55205a00000000000000000000000000000000000000000000000000000000

const INTERFACE_ID_ERC721 = 0x80ac58cd00000000000000000000000000000000000000000000000000000000


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

function sub_b9223c9d(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_c16f5156Address)
    call sub_c16f5156Address.0xb9223c9d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_e72ba456(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_c16f5156Address)
    call sub_c16f5156Address.0xf2fde38b with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_bbdf9b68(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_c16f5156Address)
    call sub_c16f5156Address.0xbbdf9b68 with:
         gas gas_remaining wei
        args 0, 0, address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_275da5ef(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(sub_c16f5156Address)
    staticcall sub_c16f5156Address.0xe31ef91c with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Setter: Not the setter'
    require ext_code.size(sub_c16f5156Address)
    call sub_c16f5156Address.0xbbdf9b68 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c54e5497(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(sub_c16f5156Address)
    staticcall sub_c16f5156Address.0xe31ef91c with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    if ext_call.return_data[12 len 20]:
        return ext_call.return_data[12 len 20], 0
    require ext_code.size(address(arg1))
    staticcall address(arg1).supportsInterface(bytes4 arg1) with:
            gas gas_remaining wei
           args 0x2a55205a00000000000000000000000000000000000000000000000000000000
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0]:
            return 0, 1
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x8da5cb5b with:
            gas gas_remaining wei
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        return ext_call.return_data[12 len 20], 2
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xf851a440 with:
            gas gas_remaining wei
    if not ext_call.success:
        return 0, 4
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20], 3
}

function sub_3755fa80(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(address(arg1))
    staticcall address(arg1).supportsInterface(bytes4 arg1) with:
            gas gas_remaining wei
           args 0x2a55205a00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'Owner: Must not be ERC2981'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Owner: Not the owner'
    require ext_code.size(sub_c16f5156Address)
    staticcall sub_c16f5156Address.0xe31ef91c with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    if ext_call.return_data[12 len 20]:
        revert with 0, 'Setter: Already set'
    require ext_code.size(address(arg1))
    staticcall address(arg1).supportsInterface(bytes4 arg1) with:
            gas gas_remaining wei
           args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        require ext_code.size(address(arg1))
        staticcall address(arg1).supportsInterface(bytes4 arg1) with:
                gas gas_remaining wei
               args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Setter: Not ERC721/ERC1155'
    require ext_code.size(sub_c16f5156Address)
    call sub_c16f5156Address.0xbbdf9b68 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ab016670(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(address(arg1))
    staticcall address(arg1).supportsInterface(bytes4 arg1) with:
            gas gas_remaining wei
           args 0x2a55205a00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'Admin: Must not be ERC2981'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xf851a440 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Admin: Not the admin'
    require ext_code.size(sub_c16f5156Address)
    staticcall sub_c16f5156Address.0xe31ef91c with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    if ext_call.return_data[12 len 20]:
        revert with 0, 'Setter: Already set'
    require ext_code.size(address(arg1))
    staticcall address(arg1).supportsInterface(bytes4 arg1) with:
            gas gas_remaining wei
           args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        require ext_code.size(address(arg1))
        staticcall address(arg1).supportsInterface(bytes4 arg1) with:
                gas gas_remaining wei
               args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Setter: Not ERC721/ERC1155'
    require ext_code.size(sub_c16f5156Address)
    call sub_c16f5156Address.0xbbdf9b68 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
