contract main {




// =====================  Runtime code  =====================


const needsUpdate = 0

const getMetadata = 32, 81, 0xfe68747470733a2f2f7265766573742e6d7970696e6174612e636c6f75642f697066732f516d5751577664706e346f7646455a78595845717463476443436d707766324643774455646831393846623632, mem[209 len 15] >> 392, 0


address owner;
address addressesProvider;
mapping of struct stor2;

function getAddressRegistry() payable {
    return addressesProvider
}

function owner() payable {
    return owner
}

function addressesProvider() payable {
    return addressesProvider
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

function getDisplayValues(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return 32, 96, stor2[arg2].field_0, stor2[arg2].field_256, bool(stor2[arg2].field_416)
}

function setAddressRegistry(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    addressesProvider = arg1
}

function sub_045c2255(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
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

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x3f8f47e800000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0xaa5ae62900000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function isUnlockable(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(stor2[arg2].field_256)
    staticcall stor2[arg2].field_256.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor2[arg2].field_416:
        return (ext_call.return_data[0] < stor2[arg2].field_0)
    return (ext_call.return_data[0] > stor2[arg2].field_0)
}

function sub_1c847816(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if not msg.sender:
        revert with 0, 'E004'
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.0xf97e7d74 with:
            gas gas_remaining wei
    mem[ceil32(ceil32(arg2.length)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'E017'
    require arg2.length >= 96
    require mem[160] == mem[172 len 20]
    require mem[192] == bool(mem[192])
    stor2[arg1].field_0 = mem[128]
    stor2[arg1].field_256 = mem[172 len 20]
    stor2[arg1].field_416 = Mask(96, 0, bool(mem[192]))
}



}
