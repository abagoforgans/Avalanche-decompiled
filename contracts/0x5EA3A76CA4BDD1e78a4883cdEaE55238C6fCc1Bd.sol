contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address stor1;
address stor2;

function _fallback() payable {
    revert
}

function changeNFTAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor1
    stor2 = arg1
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor1
    require arg1
    stor1 = arg1
}

function safeMint() payable {
    require ext_code.size(stor2)
    call stor2.0x193f3d68 with:
         gas gas_remaining wei
        args msg.sender, stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit NFTMinted(stor0);
    if stor0 == -1:
        revert with 'NH{q', 17
    stor0++
}



}
