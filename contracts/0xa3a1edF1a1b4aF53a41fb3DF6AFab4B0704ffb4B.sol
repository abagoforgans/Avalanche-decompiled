contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
uint256 sub_421bcbdf;
mapping of struct sub_05e0a2f2;

function sub_05e0a2f2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(sub_05e0a2f2[arg1].field_0), sub_05e0a2f2[arg1].field_256
}

function sub_421bcbdf(?) payable {
    return sub_421bcbdf
}

function owner() payable {
    return owner
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

function sub_700c5200(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_05e0a2f2[address(arg1)].field_0:
        return sub_05e0a2f2[address(arg1)].field_256
    return sub_421bcbdf
}

function sub_6034b510(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10000:
        revert with 3242058034
    sub_421bcbdf = arg1
    emit 0x1aa18d70: arg1, msg.sender
}

function sub_25225ef8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_05e0a2f2[address(arg1)].field_0 = 0
    sub_05e0a2f2[address(arg1)].field_256 = 0
    emit 0x27b148c6: msg.sender, address(arg1)
}

function sub_52214927(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > 10000:
        revert with 3242058034
    sub_05e0a2f2[address(arg1)].field_0 = 1
    sub_05e0a2f2[address(arg1)].field_256 = arg2
    emit 0x832cc6ea: arg2, msg.sender, address(arg1)
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

function initialize(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
    if arg1 > 10000:
        revert with 3242058034
    if not uint8(stor0.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    sub_421bcbdf = arg1
}



}
