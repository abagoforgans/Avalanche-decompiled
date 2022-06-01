contract main {




// =====================  Runtime code  =====================


address owner;
address sub_b8746e73Address;
uint256 depositFee;
mapping of uint8 stor3;
address taxRecipientAddress;

function sub_3f060648(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function depositFee() payable {
    return depositFee
}

function taxRecipient() payable {
    return taxRecipientAddress
}

function owner() payable {
    return owner
}

function checkDeposit(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[address(arg1)])
}

function sub_b8746e73(?) payable {
    return sub_b8746e73Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_f9ef5192(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    sub_b8746e73Address = arg1
}

function setDepositFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    depositFee = arg1
}

function setTaxRecipient(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    taxRecipientAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function deposit() payable {
    if stor3[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x73416c7265616479206465706f7369746564204d4541442c20706c6561736520656e746572204173676172,
                    mem[207 len 21]
    require ext_code.size(sub_b8746e73Address)
    staticcall sub_b8746e73Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < depositFee:
        revert with 0, 'Must have enough MEAD to deposit'
    require ext_code.size(sub_b8746e73Address)
    call sub_b8746e73Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, taxRecipientAddress, depositFee
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor3[msg.sender] = 1
}



}
