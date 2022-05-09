contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function withdraw() {
    require msg.sender == stor0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function migrate(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    staticcall 0xac3f978714c613e768272c502a8912bc03dcf624.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call 0xac3f978714c613e768272c502a8912bc03dcf624.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function buyAll() {
    require msg.sender == stor0
    staticcall 0xb2ac04b71888e17aa2c5102cf3d0215467d74100.0x70a08231 with:
            gas gas_remaining wei
           args 0x8d426bfe128b171d8fd38a58dfea257f01206f34
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] / 2 < 10^18:
        revert with 0, '0'
    staticcall 0x8d426bfe128b171d8fd38a58dfea257f01206f34.0x26b5e81a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] / 2 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    staticcall 0xac3f978714c613e768272c502a8912bc03dcf624.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] * ext_call.return_data[0] / 2 > ext_call.return_data[0]:
        require ext_code.size(0x56d0fed06d2e0b5ac80d7a9ed0387694bdf90c33)
        call 0x56d0fed06d2e0b5ac80d7a9ed0387694bdf90c33.withdrawETH(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args 0x70bbe4a294878a14cb3cdd9315f5eb490e346163, -1, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
           value eth.balance(this.address) / 20 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, '1'
        require ext_code.size(0x2c7b8e971c704371772edaf16e0db381a8d02027)
        call 0x2c7b8e971c704371772edaf16e0db381a8d02027.zapIn(address arg1) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args 0xac3f978714c613e768272c502a8912bc03dcf624
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x8d426bfe128b171d8fd38a58dfea257f01206f34)
    call 0x8d426bfe128b171d8fd38a58dfea257f01206f34.0xba560803 with:
         gas gas_remaining wei
        args (ext_call.return_data[0] / 2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
