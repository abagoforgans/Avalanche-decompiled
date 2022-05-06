contract main {




// =====================  Runtime code  =====================


address uSDCContractAddress;
address verseContractAddress;
address ownerAddr;

function ownerAddr() payable {
    return ownerAddr
}

function USDCContract() payable {
    return uSDCContractAddress
}

function VerseContract() payable {
    return verseContractAddress
}

function _fallback() payable {
    revert
}

function buyVerseToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 and 10^6 > -1 / arg1:
        revert with 'NH{q', 17
    require ext_code.size(uSDCContractAddress)
    staticcall uSDCContractAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(verseContractAddress)
    staticcall verseContractAddress.0x70a08231 with:
            gas gas_remaining wei
           args ownerAddr
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 10^6 * arg1:
        revert with 0, 'need more money to buy verse'
    if ext_call.return_data[0] <= arg1:
        revert with 0, 'need more verse token'
    require ext_code.size(uSDCContractAddress)
    call uSDCContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, ownerAddr, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(verseContractAddress)
    call verseContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args ownerAddr, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
