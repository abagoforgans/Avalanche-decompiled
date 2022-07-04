contract main {




// =====================  Runtime code  =====================


const sub_1ae7ec2e(?) = 'EXC'


address _proxyAddress;
uint256 sub_6eaadfc7;
array of struct sub_8ba639a4;

function sub_6eaadfc7(?) payable {
    return sub_6eaadfc7
}

function sub_8ba639a4(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < sub_8ba639a4[arg1].field_0
    if sub_8ba639a4[arg1][arg2].field_0 >= 5:
        revert with 'NH{q', 33
    return sub_8ba639a4[arg1][arg2].field_0, sub_8ba639a4[arg1][arg2].field_8
}

function _proxy() payable {
    return _proxyAddress
}

function _fallback() payable {
    revert
}

function sub_85e0d8ad(?) payable {
    staticcall _proxyAddress.0x1d10fc64 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'onlyPolicy(): only approved policies can call this function'
    require ext_code.size(_proxyAddress)
    call _proxyAddress.launch() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xfa7fcc38: block.timestamp
}

function sub_2ce21901(?) payable {
    require calldata.size - 4 >= 32
    staticcall _proxyAddress.0x1d10fc64 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'onlyPolicy(): only approved policies can call this function'
    if not sub_8ba639a4[arg1].field_0:
        revert with 0, 'cannot executeInstructions(): proposal does not exist'
    idx = 0
    while idx < sub_8ba639a4[arg1].field_0:
        mem[0] = sha3(arg1, 2)
        mem[ceil32(return_data.size) + 96] = 0xc4d1f8f100000000000000000000000000000000000000000000000000000000
        if sub_8ba639a4[arg1][idx].field_0 >= 5:
            revert with 'NH{q', 33
        mem[ceil32(return_data.size) + 100] = sub_8ba639a4[arg1][idx].field_0
        mem[ceil32(return_data.size) + 132] = sub_8ba639a4[arg1][idx].field_8
        require ext_code.size(_proxyAddress)
        call _proxyAddress.0xc4d1f8f1 with:
             gas gas_remaining wei
            args sub_8ba639a4[arg1][idx].field_0, sub_8ba639a4[arg1][idx].field_8
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    emit 0xdfded950: arg1
}

function sub_18dc0de7(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (64 * ('cd', 4).length) + 36 <= calldata.size
    mem[100] = msg.sender
    staticcall _proxyAddress.0x1d10fc64 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'onlyPolicy(): only approved policies can call this function'
    if 1 > !sub_6eaadfc7:
        revert with 'NH{q', 17
    mem[0] = sub_6eaadfc7 + 1
    mem[32] = 2
    if not ('cd', 4).length:
        revert with 0, 'cannot storeInstructions(): instructions cannot be empty'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((64 * idx) + cd[4] + 68)] == address(cd[((64 * idx) + cd[4] + 68)])
        if not ext_code.size(cd[((64 * idx) + cd[4] + 68)]):
            revert with 0, 'cannot storeInstructions(): target address is not a contract'
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((64 * idx) + cd[4] + 36)] < 5
        if cd[((64 * idx) + cd[4] + 36)] > 4:
            revert with 'NH{q', 33
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if not cd[((64 * idx) + cd[4] + 36)]:
            require cd[((64 * idx) + cd[4] + 68)] == address(cd[((64 * idx) + cd[4] + 68)])
            staticcall address(cd[((64 * idx) + cd[4] + 68)]).0x1ae7ec2e with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _41 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_41] == Mask(24, 232, mem[_41])
            s = 0
            while s < 3:
                if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('var', '_41'), 32))), 0) + 256, s) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('var', '_41'), 32))), 0) - 8 < 'A':
                    revert with 0, ' cannot storeInstructions(): invalid keycode'
                if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('var', '_41'), 32))), 0) + 256, s) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('var', '_41'), 32))), 0) - 8 > 'Z':
                    revert with 0, ' cannot storeInstructions(): invalid keycode'
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            if Mask(24, 232, mem[_41]) == 'EXC':
                if ('cd', 4).length < 1:
                    revert with 'NH{q', 17
                if ('cd', 4).length - 1 >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((64 * ('cd', 4).length - 1) + cd[4] + 36)] < 5
                if cd[((64 * ('cd', 4).length - 1) + cd[4] + 36)] > 4:
                    revert with 'NH{q', 33
                if cd[((64 * ('cd', 4).length - 1) + cd[4] + 36)] != 4:
                    revert with 0, 
                                'cannot storeInstructions(): changes to the Executive system (EXC) requires changing the Proxy executive as the last step of the proposal'
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((64 * idx) + cd[4] + 68)] == address(cd[((64 * idx) + cd[4] + 68)])
                if ('cd', 4).length < 1:
                    revert with 'NH{q', 17
                if ('cd', 4).length - 1 >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((64 * ('cd', 4).length - 1) + cd[4] + 68)] == address(cd[((64 * ('cd', 4).length - 1) + cd[4] + 68)])
                if address(cd[((64 * ('cd', 4).length - 1) + cd[4] + 68)]) != address(cd[((64 * idx) + cd[4] + 68)]):
                    revert with 0, 'cannot storeInstructions(): changeExecutive target address does not match the upgraded Executive system address'
        else:
            require cd[((64 * idx) + cd[4] + 36)] < 5
            if cd[((64 * idx) + cd[4] + 36)] > 4:
                revert with 'NH{q', 33
            if cd[((64 * idx) + cd[4] + 36)] == 1:
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((64 * idx) + cd[4] + 68)] == address(cd[((64 * idx) + cd[4] + 68)])
                staticcall address(cd[((64 * idx) + cd[4] + 68)]).0x1ae7ec2e with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _46 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_46] == Mask(24, 232, mem[_46])
                s = 0
                while s < 3:
                    if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('var', '_46'), 32))), 0) + 256, s) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('var', '_46'), 32))), 0) - 8 < 'A':
                        revert with 0, ' cannot storeInstructions(): invalid keycode'
                    if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('var', '_46'), 32))), 0) + 256, s) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('var', '_46'), 32))), 0) - 8 > 'Z':
                        revert with 0, ' cannot storeInstructions(): invalid keycode'
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    continue 
                if Mask(24, 232, mem[_46]) == 'EXC':
                    if ('cd', 4).length < 1:
                        revert with 'NH{q', 17
                    if ('cd', 4).length - 1 >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    require cd[((64 * ('cd', 4).length - 1) + cd[4] + 36)] < 5
                    if cd[((64 * ('cd', 4).length - 1) + cd[4] + 36)] > 4:
                        revert with 'NH{q', 33
                    if cd[((64 * ('cd', 4).length - 1) + cd[4] + 36)] != 4:
                        revert with 0, 
                                    'cannot storeInstructions(): changes to the Executive system (EXC) requires changing the Proxy executive as the last step of the proposal'
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    require cd[((64 * idx) + cd[4] + 68)] == address(cd[((64 * idx) + cd[4] + 68)])
                    if ('cd', 4).length < 1:
                        revert with 'NH{q', 17
                    if ('cd', 4).length - 1 >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    require cd[((64 * ('cd', 4).length - 1) + cd[4] + 68)] == address(cd[((64 * ('cd', 4).length - 1) + cd[4] + 68)])
                    if address(cd[((64 * ('cd', 4).length - 1) + cd[4] + 68)]) != address(cd[((64 * idx) + cd[4] + 68)]):
                        revert with 0, 'cannot storeInstructions(): changeExecutive target address does not match the upgraded Executive system address'
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        sub_8ba639a4[stor1 + 1].field_0++
        mem[0] = sha3(sub_6eaadfc7 + 1, 2)
        require cd[((64 * idx) + cd[4] + 36)] < 5
        sub_8ba639a4[stor1 + 1][sub_8ba639a4[stor1 + 1].field_0].field_0 = uint8(cd[((64 * idx) + cd[4] + 36)])
        require cd[((64 * idx) + cd[4] + 68)] == address(cd[((64 * idx) + cd[4] + 68)])
        sub_8ba639a4[stor1 + 1][sub_8ba639a4[stor1 + 1].field_0].field_0 = uint8(cd[((64 * idx) + cd[4] + 36)])
        sub_8ba639a4[stor1 + 1][sub_8ba639a4[stor1 + 1].field_0].field_8 = address(cd[((64 * idx) + cd[4] + 68)])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if sub_6eaadfc7 == -1:
        revert with 'NH{q', 17
    sub_6eaadfc7++
    emit 0x78645654: (sub_6eaadfc7 + 1)
    return (sub_6eaadfc7 + 1)
}



}
