contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct stor1;
mapping of address stor2;
mapping of uint256 stor3;
address stor4;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_76459b39(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor2[arg1 << 240]:
        revert with 0, 'Market already listed'
    stor2[arg1 << 240] = arg2
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_3a168c82(?) payable {
    require calldata.size - 4 >= 32
    if stor1[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x2e506f736974696f6e2068617320616c7265616479206265656e20696e7374616e746961746564,
                    mem[203 len 25]
    if stor1[arg1].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0xfe596f7520646f6e27742068617665207065726d697373696f6e20746f2063616e63656c2074686973206f7074696f6e,
                    mem[212 len 16]
    stor1[arg1].field_768 = 1
}

function sub_7be1bf18(?) payable {
    require calldata.size - 4 >= 32
    if stor1[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x2e506f736974696f6e2068617320616c7265616479206265656e20696e7374616e746961746564,
                    mem[203 len 25]
    if stor1[arg1].field_256 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0xfe596f7520646f6e27742068617665207065726d697373696f6e20746f2063616e63656c2074686973206f7074696f6e,
                    mem[212 len 16]
    stor1[arg1].field_768 = 1
}

function sub_20b62dfb(?) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp <= arg2 + (168 * 24 * 3600):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x73534554544c454d454e545f425245414b5f48415443482068617665206e6f7420706173736564,
                    mem[203 len 25]
    require ext_code.size(0x96e095d2a8cdedb9ec09dfbe83ad75baa8e7aee2)
    delegate 0x96e095d2a8cdedb9ec09dfbe83ad75baa8e7aee2.0xee3bf355 with:
         gas gas_remaining wei
        args 0, uint32(arg1), arg2, arg3, arg4
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor3[delegate.return_data[0]]:
        revert with 0, 'Settlement price already set'
    if not arg5:
        revert with 0, 'Invalid settlement price.'
    stor3[delegate.return_data[0]] = arg5
}

function sub_84e3bd94(?) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp <= arg2 + (2 * 3600):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x77534554544c454d454e545f4255464645525f5345434f4e44532068617665206e6f7420706173736564,
                    mem[206 len 22]
    require ext_code.size(0x96e095d2a8cdedb9ec09dfbe83ad75baa8e7aee2)
    delegate 0x96e095d2a8cdedb9ec09dfbe83ad75baa8e7aee2.0xee3bf355 with:
         gas gas_remaining wei
        args 0, uint32(arg1), arg2, arg3, arg4
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor3[delegate.return_data[0]]:
        revert with 0, 'Settlement price already set'
    require ext_code.size(stor2[arg4 << 240])
    call stor2[arg4 << 240].0x25e853bd with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Invalid settlement price.'
    stor3[delegate.return_data[0]] = ext_call.return_data[0]
}

function sub_935c80ad(?) payable {
    require calldata.size - 4 >= 320
    if arg5 <= block.timestamp:
        revert with 0, 'Option has already expired'
    if arg4 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 'Amount too high'
    if arg10:
        if arg10 < block.timestamp:
            revert with 0, 'Invalid order expiry'
    require ext_code.size(0x96e095d2a8cdedb9ec09dfbe83ad75baa8e7aee2)
    delegate 0x96e095d2a8cdedb9ec09dfbe83ad75baa8e7aee2.0x111940f3 with:
         gas gas_remaining wei
        args 0, arg1, msg.sender, address(arg3), arg4, arg5, arg6, arg7, arg8 << 240, arg9
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor1[delegate.return_data[0]].field_0:
        revert with 0, 'Buyer has already signed.'
    if stor1[delegate.return_data[0]].field_256 != arg3:
        stor1[delegate.return_data[0]].field_512 = arg10
    else:
        if stor1[delegate.return_data[0]].field_768:
            require block.timestamp <= stor1[delegate.return_data[0]].field_768
        require ext_code.size(0x96e095d2a8cdedb9ec09dfbe83ad75baa8e7aee2)
        delegate 0x96e095d2a8cdedb9ec09dfbe83ad75baa8e7aee2.0xee3bf355 with:
             gas gas_remaining wei
            args 0, uint32(arg9), arg5, arg6, arg8
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor4)
        call stor4.0x8abc77fa with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg2), delegate.return_data[0], arg4, arg7
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not arg4:
            require ext_code.size(stor4)
            call stor4.0x8abc77fa with:
                 gas gas_remaining wei
                args 0, 0, address(arg3), delegate.return_data[0], 0, arg7
        else:
            require arg4
            if -arg4 / arg4 != -1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            39,
                            0x2e5369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            Mask(200, 0, arg4)
            require ext_code.size(stor4)
            call stor4.0x8abc77fa with:
                 gas gas_remaining wei
                args 0, 0, address(arg3), delegate.return_data[0], -arg4, arg7
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x6dbcb3eb: address(arg2), address(arg3), delegate.return_data[0], arg8 << 240, arg6, arg5, arg9, arg4, arg7
    stor1[delegate.return_data[0]].field_0 = arg2
}

function sub_b696e7f7(?) payable {
    require calldata.size - 4 >= 320
    if arg5 <= block.timestamp:
        revert with 0, 'Option has already expired'
    if arg4 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 'Amount too high'
    if arg10:
        if arg10 < block.timestamp:
            revert with 0, 'Invalid order expiry'
    require ext_code.size(0x96e095d2a8cdedb9ec09dfbe83ad75baa8e7aee2)
    delegate 0x96e095d2a8cdedb9ec09dfbe83ad75baa8e7aee2.0x111940f3 with:
         gas gas_remaining wei
        args 0, arg1, address(arg2), msg.sender, arg4, arg5, arg6, arg7, arg8 << 240, arg9
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor1[delegate.return_data[0]].field_256:
        revert with 0, 'Seller has already signed.'
    if stor1[delegate.return_data[0]].field_0 != arg2:
        stor1[delegate.return_data[0]].field_768 = arg10
    else:
        if stor1[delegate.return_data[0]].field_512:
            require block.timestamp <= stor1[delegate.return_data[0]].field_512
        require ext_code.size(0x96e095d2a8cdedb9ec09dfbe83ad75baa8e7aee2)
        delegate 0x96e095d2a8cdedb9ec09dfbe83ad75baa8e7aee2.0xee3bf355 with:
             gas gas_remaining wei
            args 0, uint32(arg9), arg5, arg6, arg8
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor4)
        call stor4.0x8abc77fa with:
             gas gas_remaining wei
            args 0, 0, address(arg2), delegate.return_data[0], arg4, arg7
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not arg4:
            require ext_code.size(stor4)
            call stor4.0x8abc77fa with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), address(arg3), delegate.return_data[0], 0, arg7
        else:
            require arg4
            if -arg4 / arg4 != -1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            39,
                            0x2e5369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            Mask(200, 0, arg4)
            require ext_code.size(stor4)
            call stor4.0x8abc77fa with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), address(arg3), delegate.return_data[0], -arg4, arg7
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x6dbcb3eb: address(arg2), address(arg3), delegate.return_data[0], arg8 << 240, arg6, arg5, arg9, arg4, arg7
    stor1[delegate.return_data[0]].field_256 = arg3
}

function sub_062f37b0(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    require cd[132] <= 4294967296
    require cd[132] + 36 <= calldata.size
    require ('cd', 132).length <= 4294967296 and cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require block.timestamp > cd[36] + (2 * 3600)
    require ext_code.size(0x96e095d2a8cdedb9ec09dfbe83ad75baa8e7aee2)
    delegate 0x96e095d2a8cdedb9ec09dfbe83ad75baa8e7aee2.0xee3bf355 with:
         gas gas_remaining wei
        args 0, uint32(bool(cd[4])), cd[36], cd[68], uint16(cd[100])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor3[delegate.return_data[0]]:
        revert with 0, 'Invalid settlement price.'
    if not cd[4]:
        if stor3[delegate.return_data[0]] < cd[68]:
            idx = 0
            while idx < ('cd', 132).length:
                require ext_code.size(stor4)
                call stor4.0x5c076727 with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], cd[68] - stor3[delegate.return_data[0]]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < ('cd', 132).length
                mem[mem[64]] = address(cd[((32 * idx) + cd[132] + 36)])
                mem[mem[64] + 32] = delegate.return_data[0]
                mem[mem[64] + 64] = uint16(cd[100])
                mem[mem[64] + 96] = cd[68]
                mem[mem[64] + 128] = cd[36]
                mem[mem[64] + 160] = bool(cd[4])
                mem[mem[64] + 192] = stor3[delegate.return_data[0]]
                emit 0x4598169c: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], cd[100] << 240, cd[68], cd[36], bool(cd[4]), stor3[delegate.return_data[0]]
                idx = idx + 1
                continue 
        else:
            idx = 0
            while idx < ('cd', 132).length:
                require ext_code.size(stor4)
                call stor4.0x5c076727 with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < ('cd', 132).length
                mem[mem[64]] = address(cd[((32 * idx) + cd[132] + 36)])
                mem[mem[64] + 32] = delegate.return_data[0]
                mem[mem[64] + 64] = uint16(cd[100])
                mem[mem[64] + 96] = cd[68]
                mem[mem[64] + 128] = cd[36]
                mem[mem[64] + 160] = bool(cd[4])
                mem[mem[64] + 192] = stor3[delegate.return_data[0]]
                emit 0x4598169c: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], cd[100] << 240, cd[68], cd[36], bool(cd[4]), stor3[delegate.return_data[0]]
                idx = idx + 1
                continue 
    else:
        if stor3[delegate.return_data[0]] > cd[68]:
            idx = 0
            while idx < ('cd', 132).length:
                require ext_code.size(stor4)
                call stor4.0x5c076727 with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], stor3[delegate.return_data[0]] - cd[68]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < ('cd', 132).length
                mem[mem[64]] = address(cd[((32 * idx) + cd[132] + 36)])
                mem[mem[64] + 32] = delegate.return_data[0]
                mem[mem[64] + 64] = uint16(cd[100])
                mem[mem[64] + 96] = cd[68]
                mem[mem[64] + 128] = cd[36]
                mem[mem[64] + 160] = bool(cd[4])
                mem[mem[64] + 192] = stor3[delegate.return_data[0]]
                emit 0x4598169c: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], cd[100] << 240, cd[68], cd[36], bool(cd[4]), stor3[delegate.return_data[0]]
                idx = idx + 1
                continue 
        else:
            idx = 0
            while idx < ('cd', 132).length:
                require ext_code.size(stor4)
                call stor4.0x5c076727 with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < ('cd', 132).length
                mem[mem[64]] = address(cd[((32 * idx) + cd[132] + 36)])
                mem[mem[64] + 32] = delegate.return_data[0]
                mem[mem[64] + 64] = uint16(cd[100])
                mem[mem[64] + 96] = cd[68]
                mem[mem[64] + 128] = cd[36]
                mem[mem[64] + 160] = bool(cd[4])
                mem[mem[64] + 192] = stor3[delegate.return_data[0]]
                emit 0x4598169c: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], cd[100] << 240, cd[68], cd[36], bool(cd[4]), stor3[delegate.return_data[0]]
                idx = idx + 1
                continue 
}



}
