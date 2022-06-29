contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor1;
address paymentProxyAddress;
address chainlinkConversionPathAddress;
address sub_d515bb03Address;

function paymentProxy() {
    return paymentProxyAddress
}

function chainlinkConversionPath() {
    return chainlinkConversionPathAddress
}

function isWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    return bool(stor1[address(arg1)])
}

function sub_d515bb03(?) {
    return sub_d515bb03Address
}

function _fallback() payable {
    revert
}

function renounceWhitelistAdmin() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account does not have role'
    stor1[address(msg.sender)] = 0
    emit WhitelistAdminRemoved(msg.sender);
}

function sub_5536bcde(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin role'
    paymentProxyAddress = address(arg1)
}

function sub_7a38d1cb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin role'
    chainlinkConversionPathAddress = address(arg1)
}

function addWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin role'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if stor1[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor1[address(arg1)] = 1
    emit WhitelistAdminAdded(arg1);
}

function sub_ac473c8a(?) payable {
    require calldata.size - 4 >= 224
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + ('cd', 100).length + 36 <= calldata.size
    require cd[132] == cd[132]
    require cd[164] == address(cd[164])
    require cd[196] == cd[196]
    if ('cd', 68).length < 1:
        revert with 'NH{q', 17
    if ('cd', 68).length - 1 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
    if address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]) != sub_d515bb03Address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'payment currency must be the native token'
    mem[128 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
    mem[(32 * ('cd', 68).length) + 128] = 0x97edd4fa00000000000000000000000000000000000000000000000000000000
    mem[(32 * ('cd', 68).length) + 132] = 32
    mem[(32 * ('cd', 68).length) + 164] = ('cd', 68).length
    idx = 0
    s = 128
    t = (32 * ('cd', 68).length) + 196
    while idx < ('cd', 68).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(chainlinkConversionPathAddress)
    staticcall chainlinkConversionPathAddress.0x97edd4fa with:
            gas gas_remaining wei
           args mem[(32 * ('cd', 68).length) + 132 len (96 * ('cd', 68).length) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    if cd[196]:
        if block.timestamp < ext_call.return_data[32]:
            revert with 'NH{q', 17
        if block.timestamp - ext_call.return_data[32] > cd[196]:
            revert with 0, 'aggregator rate is outdated'
    if cd[36] and ext_call.return_data[0] > -1 / cd[36]:
        revert with 'NH{q', 17
    if not ext_call.return_data[64]:
        revert with 'NH{q', 18
    if cd[132] and ext_call.return_data[0] > -1 / cd[132]:
        revert with 'NH{q', 17
    if not ext_call.return_data[64]:
        revert with 'NH{q', 18
    mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + ceil32(('cd', 100).length) + 356 len floor32(ceil32(('cd', 100).length) + 227)] = 0, address(cd[4]), cd[36] * ext_call.return_data[0] / ext_call.return_data[64], 160, cd[132] * ext_call.return_data[0] / ext_call.return_data[64], address(cd[164]), ('cd', 100).length, call.data[cd[100] + 36 len ('cd', 100).length], Mask(8 * floor32(ceil32(('cd', 100).length) + 227) + -('cd', 100).length - 196, -(8 * floor32(ceil32(('cd', 100).length) + 227) + -('cd', 100).length - 196) + 256, 0) >> -(8 * floor32(ceil32(('cd', 100).length) + 227) + -('cd', 100).length - 196) + 256
    delegate paymentProxyAddress with:
       funct (Mask(32, -(8 * ceil32(('cd', 100).length) + -('cd', 100).length + 4) + 256, 0) >> -(8 * ceil32(('cd', 100).length) + -('cd', 100).length + 4) + 256)
         gas gas_remaining wei
        args Mask(8 * -ceil32(('cd', 100).length) + ('cd', 100).length + 28, 0, 0), mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + ('cd', 100).length + 388 len (2 * ceil32(('cd', 100).length)) + -('cd', 100).length + 164]
    if not delegate.return_code:
        revert with 0, 'paymentProxy transferExactEthWithReferenceAndFee failed'
    if return_data.size:
        if 0 >= ('cd', 68).length:
            revert with 'NH{q', 50
        require ('cd', 68)[0] == address(('cd', 68)[0])
        emit TransferWithConversionAndReference(cd[36], address(('cd', 68)[0]), cd[132], cd[196], sha3(call.data[cd[100] + 36 len ('cd', 100).length]));
    else:
        mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + ceil32(('cd', 100).length) + 356 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
        mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + ceil32(('cd', 100).length) + ('cd', 100).length + 356] = 0
        if 0 >= ('cd', 68).length:
            revert with 'NH{q', 50
        require ('cd', 68)[0] == address(('cd', 68)[0])
        mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + ceil32(('cd', 100).length) + 356] = cd[36]
        mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + ceil32(('cd', 100).length) + 388] = address(('cd', 68)[0])
        emit TransferWithConversionAndReference(Mask(8 * -ceil32(('cd', 100).length) + ('cd', 100).length + 32, 0, 0), mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + ('cd', 100).length + 388 len ceil32(('cd', 100).length) + -('cd', 100).length + 32], cd[132], cd[196], sha3(call.data[cd[100] + 36 len ('cd', 100).length]));
}



}
