contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function fix() payable {
    require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
    call 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 0xe530dc2095ef5653205cf5ea79f8979a7028065c, 40 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    require ext_code.size(0xe530dc2095ef5653205cf5ea79f8979a7028065c)
    call 0xe530dc2095ef5653205cf5ea79f8979a7028065c.sync() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
