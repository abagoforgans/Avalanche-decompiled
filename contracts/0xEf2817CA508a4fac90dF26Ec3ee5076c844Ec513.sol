contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_f019e2b2;
address TOKENAddress;
uint8 stor3; offset 160
uint8 stor3; offset 168
uint128 stor3; offset 168
address sub_0885a950Address;
mapping of uint256 senderInfo;

function sub_0885a950(?) payable {
    return sub_0885a950Address
}

function started() payable {
    return bool(uint8(stor3.field_168))
}

function isInitialized() payable {
    return bool(uint8(stor3.field_160))
}

function TOKEN() payable {
    return TOKENAddress
}

function owner() payable {
    return owner
}

function senderInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return senderInfo[arg1]
}

function sub_f019e2b2(?) payable {
    return sub_f019e2b2
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setStarted(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    Mask(88, 0, stor3.field_168) = Mask(88, 0, arg1)
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    TOKENAddress = arg1
    sub_0885a950Address = arg2
    uint8(stor3.field_160) = 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function reclaim() payable {
    if not senderInfo[msg.sender]:
        revert with 0, 'user has no aTOKEN to withdraw'
    if uint8(stor3.field_168):
        revert with 0, 'aTOKEN swap is still ongoing'
    senderInfo[msg.sender] = 0
    require ext_code.size(sub_0885a950Address)
    call sub_0885a950Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, senderInfo[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if uint8(stor3.field_168):
        revert with 0, 'aTOKEN swap is still ongoing'
    require ext_code.size(TOKENAddress)
    staticcall TOKENAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(TOKENAddress)
    call TOKENAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function migrate() payable {
    if not uint8(stor3.field_160):
        revert with 0, 'not initialized'
    require ext_code.size(sub_0885a950Address)
    staticcall sub_0885a950Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not uint8(stor3.field_168):
        revert with 0, 'Not open yet'
    require ext_code.size(sub_0885a950Address)
    call sub_0885a950Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + senderInfo[msg.sender] < senderInfo[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    senderInfo[msg.sender] += ext_call.return_data[0]
    require ext_code.size(TOKENAddress)
    call TOKENAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
