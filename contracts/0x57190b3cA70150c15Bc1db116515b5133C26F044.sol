contract main {




// =====================  Runtime code  =====================


uint256 val;
address stor1;

function val() payable {
    return val
}

function _fallback() payable {
    revert
}

function yield() payable {
    require msg.sender == stor1
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
    call 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
    call 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
}

function fix() payable {
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
         gas gas_remaining wei
        args 0xe530dc2095ef5653205cf5ea79f8979a7028065c, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
    call 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
    call 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0xa9059cbb with:
         gas gas_remaining wei
        args 0xe530dc2095ef5653205cf5ea79f8979a7028065c, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    require ext_code.size(0xe530dc2095ef5653205cf5ea79f8979a7028065c)
    call 0xe530dc2095ef5653205cf5ea79f8979a7028065c.0xfff6cae9 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
