contract main {




// =====================  Runtime code  =====================


const sub_33bf6156(?) = 0xd9b67a2600000000000000000000000000000000000000000000000000000000

const INTERFACE_ID_ERC721 = 0x80ac58cd00000000000000000000000000000000000000000000000000000000


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
address sub_283b00e1Address;
address sub_f048d320Address;
mapping of address sub_4216a753;

function sub_283b00e1(?) payable {
    return sub_283b00e1Address
}

function sub_4216a753(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4216a753[arg1]
}

function owner() payable {
    return owner
}

function sub_f048d320(?) payable {
    return sub_f048d320Address
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

function sub_7053fb79(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not sub_4216a753[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TransferSelectorNFT: Collection has no transfer manager'
    sub_4216a753[address(arg1)] = 0
    emit 0x8c3bf4ba: address(arg1)
}

function sub_25c6a895(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TransferSelectorNFT: Collection cannot be null address'
    if not address(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TransferSelectorNFT: TransferManager cannot be null address'
    sub_4216a753[address(arg1)] = address(arg2)
    emit 0xda166be6: address(arg1), address(arg2)
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
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
    sub_283b00e1Address = arg1
    sub_f048d320Address = arg2
}

function sub_cc159493(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_4216a753[address(arg1)]:
        return sub_4216a753[address(arg1)]
    staticcall address(arg1).supportsInterface(bytes4 arg1) with:
            gas gas_remaining wei
           args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        return sub_283b00e1Address
    staticcall address(arg1).supportsInterface(bytes4 arg1) with:
            gas gas_remaining wei
           args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'TransferSelectorNFT: No NFT transfer manager available'
    return sub_f048d320Address
}



}
