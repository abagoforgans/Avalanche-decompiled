contract main {




// =====================  Runtime code  =====================


address implementationAddress;
uint8 stor1; offset 160
uint8 stor1; offset 168
address adminAddress;

function adminHasRights() {
    return bool(uint8(stor1.field_168))
}

function fuseAdminHasRights() {
    return bool(uint8(stor1.field_160))
}

function implementation() {
    return implementationAddress
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    if msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0xfe43457263323044656c656761746f723a66616c6c6261636b3a2063616e6e6f742073656e642076616c756520746f2066616c6c626163,
                    mem[219 len 9]
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function delegateToImplementation(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    delegate implementationAddress with:
       funct (Mask(32, -(8 * ceil32(arg1.length) + -arg1.length + 4) + 256, 0) >> -(8 * ceil32(arg1.length) + -arg1.length + 4) + 256)
         gas gas_remaining wei
        args mem[ceil32(arg1.length) + 132 len arg1.length - 4]
    if return_data.size:
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    if not delegate.return_code:
        revert with memory
          from 128
           len return_data.size
    mem[ceil32(arg1.length) + 128] = 32
    mem[ceil32(arg1.length) + 160] = arg1.length
    mem[ceil32(arg1.length) + 192 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), 
               mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32],
               Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
    mem[floor32(arg1.length) + ceil32(arg1.length) + 192] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), 
           mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32],
           Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
           mem[(2 * ceil32(arg1.length)) + 192 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
}

function _setImplementation(address arg1, bool arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if adminAddress != msg.sender:
        if msg.sender != 0x4cfb9547cc08ff66b8374d99f5384c320ae20cdc:
            revert with 0, 
                        32,
                        57,
                        0x6b43457263323044656c656761746f723a3a5f736574496d706c656d656e746174696f6e3a2043616c6c6572206d7573742062652061646d69,
                        mem[ceil32(arg3.length) + 253 len 7]
        if not uint8(stor1.field_160):
            revert with 0, 
                        32,
                        57,
                        0x6b43457263323044656c656761746f723a3a5f736574496d706c656d656e746174696f6e3a2043616c6c6572206d7573742062652061646d69,
                        mem[ceil32(arg3.length) + 253 len 7]
        if not arg2:
            implementationAddress = arg1
            mem[ceil32(arg3.length) + 164] = 32
            mem[ceil32(arg3.length) + 196] = arg3.length
            mem[ceil32(arg3.length) + 228 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            if not arg3.length % 32:
                mem[ceil32(arg3.length) + 128] = arg3.length + 68
                mem[64] = arg3.length + ceil32(arg3.length) + 228
                mem[ceil32(arg3.length) + 164 len 28] = 0
                mem[ceil32(arg3.length) + 160 len 4] = _becomeImplementation(bytes arg1)
                _350 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[arg3.length + ceil32(arg3.length) + 228 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                mem[arg3.length + ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 228] = mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) + 256, mem[arg3.length + ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 228])
                delegate implementationAddress.mem[arg3.length + ceil32(arg3.length) + 228 len 4] with:
                     gas gas_remaining wei
                    args mem[arg3.length + ceil32(arg3.length) + 232 len _350 - 4]
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + 228] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 260 len arg3.length % 32]
                mem[ceil32(arg3.length) + 128] = floor32(arg3.length) + 100
                mem[64] = floor32(arg3.length) + ceil32(arg3.length) + 260
                mem[ceil32(arg3.length) + 164 len 28] = 0
                mem[ceil32(arg3.length) + 160 len 4] = _becomeImplementation(bytes arg1)
                _356 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[floor32(arg3.length) + ceil32(arg3.length) + 260 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                mem[floor32(arg3.length) + ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 260] = mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) + 256, mem[floor32(arg3.length) + ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 260])
                delegate implementationAddress.mem[floor32(arg3.length) + ceil32(arg3.length) + 260 len 4] with:
                     gas gas_remaining wei
                    args mem[floor32(arg3.length) + ceil32(arg3.length) + 264 len _356 - 4]
        else:
            mem[ceil32(arg3.length) + 128] = 4
            mem[64] = ceil32(arg3.length) + 164
            mem[ceil32(arg3.length) + 160 len 4] = _resignImplementation()
            _30 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[ceil32(arg3.length) + 164 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 164] = mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) + 256, mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 164])
            delegate implementationAddress.mem[ceil32(arg3.length) + 164 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(arg3.length) + 168 len _30 - 4]
            if return_data.size:
                mem[ceil32(arg3.length) + 164] = return_data.size
                mem[ceil32(arg3.length) + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                implementationAddress = arg1
                mem[ceil32(arg3.length) + ceil32(return_data.size) + 201] = 32
                mem[ceil32(arg3.length) + ceil32(return_data.size) + 233] = arg3.length
                mem[ceil32(arg3.length) + ceil32(return_data.size) + 265 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                if not arg3.length % 32:
                    delegate implementationAddress.mem[ceil32(arg3.length) + ceil32(return_data.size) + floor32(arg3.length + 68) + 165 len 4] with:
                         gas gas_remaining wei
                        args Mask(8 * floor32(arg3.length + 68) - 4, -(8 * floor32(arg3.length + 68)) + 256, mem[ceil32(arg3.length) + ceil32(return_data.size) + 233 len floor32(arg3.length + 68) - 36]) << (8 * floor32(arg3.length + 68)) - 256, mem[arg3.length + ceil32(arg3.length) + ceil32(return_data.size) + floor32(arg3.length + 68) + 265 len arg3.length + -floor32(arg3.length + 68) + 68]
                else:
                    mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(return_data.size) + 265] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(return_data.size) + -(arg3.length % 32) + 297 len arg3.length % 32]
                    delegate implementationAddress.mem[ceil32(arg3.length) + ceil32(return_data.size) + floor32(floor32(arg3.length) + 100) + 165 len 4] with:
                         gas gas_remaining wei
                        args Mask(8 * floor32(floor32(arg3.length) + 100) - 4, -(8 * floor32(floor32(arg3.length) + 100)) + 256, mem[ceil32(arg3.length) + ceil32(return_data.size) + 265 len floor32(floor32(arg3.length) + 100) - 68]) << (8 * floor32(floor32(arg3.length) + 100)) - 256, mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(return_data.size) + floor32(floor32(arg3.length) + 100) + 297 len floor32(arg3.length) + -floor32(floor32(arg3.length) + 100) + 100]
            else:
                if not delegate.return_code:
                    revert with memory
                      from 128
                       len return_data.size
                implementationAddress = arg1
                mem[ceil32(arg3.length) + 200] = 32
                mem[ceil32(arg3.length) + 232] = arg3.length
                mem[ceil32(arg3.length) + 264 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                if not arg3.length % 32:
                    mem[ceil32(arg3.length) + 164] = arg3.length + 68
                    mem[ceil32(arg3.length) + 196 len 4] = _becomeImplementation(bytes arg1)
                    mem[arg3.length + ceil32(arg3.length) + 264 len floor32(arg3.length + 68)] = 0, 32, mem[ceil32(arg3.length) + 232 len floor32(arg3.length + 68) - 36]
                    mem[arg3.length + ceil32(arg3.length) + floor32(arg3.length + 68) + -(arg3.length + 68 % 32) + 296 len arg3.length + 68 % 32] = mem[ceil32(arg3.length) + (2 * floor32(arg3.length + 68)) + -(arg3.length + 68 % 32) + -arg3.length + 128 len arg3.length + 68 % 32]
                    delegate implementationAddress.mem[ceil32(arg3.length) + floor32(arg3.length + 68) + 164 len 4] with:
                         gas gas_remaining wei
                        args Mask(8 * floor32(arg3.length + 68) - 4, -(8 * floor32(arg3.length + 68)) + 256, mem[ceil32(arg3.length) + 232 len floor32(arg3.length + 68) - 36]) << (8 * floor32(arg3.length + 68)) - 256, mem[arg3.length + ceil32(arg3.length) + floor32(arg3.length + 68) + 264 len arg3.length + -floor32(arg3.length + 68) + 68]
                else:
                    mem[floor32(arg3.length) + ceil32(arg3.length) + 264] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 296 len arg3.length % 32]
                    mem[ceil32(arg3.length) + 164] = floor32(arg3.length) + 100
                    mem[ceil32(arg3.length) + 196 len 4] = _becomeImplementation(bytes arg1)
                    mem[floor32(arg3.length) + ceil32(arg3.length) + 296 len floor32(floor32(arg3.length) + 100)] = 0, 32, arg3.length, mem[ceil32(arg3.length) + 264 len floor32(floor32(arg3.length) + 100) - 68]
                    mem[floor32(arg3.length) + ceil32(arg3.length) + floor32(floor32(arg3.length) + 100) + -(floor32(arg3.length) + 100 % 32) + 328 len floor32(arg3.length) + 100 % 32] = mem[ceil32(arg3.length) + (2 * floor32(floor32(arg3.length) + 100)) + -(floor32(arg3.length) + 100 % 32) + -floor32(arg3.length) + 96 len floor32(arg3.length) + 100 % 32]
                    delegate implementationAddress.mem[ceil32(arg3.length) + floor32(floor32(arg3.length) + 100) + 164 len 4] with:
                         gas gas_remaining wei
                        args Mask(8 * floor32(floor32(arg3.length) + 100) - 4, -(8 * floor32(floor32(arg3.length) + 100)) + 256, mem[ceil32(arg3.length) + 264 len floor32(floor32(arg3.length) + 100) - 68]) << (8 * floor32(floor32(arg3.length) + 100)) - 256, mem[floor32(arg3.length) + ceil32(arg3.length) + floor32(floor32(arg3.length) + 100) + 296 len floor32(arg3.length) + -floor32(floor32(arg3.length) + 100) + 100]
        if not return_data.size:
            if not delegate.return_code:
                revert with memory
                  from 128
                   len return_data.size
        else:
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
        ('bool', 'delegate.return_code')
        emit NewImplementation(implementationAddress, implementationAddress);
    else:
        if uint8(stor1.field_168):
            if not arg2:
                implementationAddress = arg1
                mem[ceil32(arg3.length) + 164] = 32
                mem[ceil32(arg3.length) + 196] = arg3.length
                mem[ceil32(arg3.length) + 228 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                if not arg3.length % 32:
                    mem[ceil32(arg3.length) + 128] = arg3.length + 68
                    mem[64] = arg3.length + ceil32(arg3.length) + 228
                    mem[ceil32(arg3.length) + 164 len 28] = 0
                    mem[ceil32(arg3.length) + 160 len 4] = _becomeImplementation(bytes arg1)
                    _352 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                    mem[arg3.length + ceil32(arg3.length) + 228 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                    mem[arg3.length + ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 228] = mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) + 256, mem[arg3.length + ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 228])
                    delegate implementationAddress.mem[arg3.length + ceil32(arg3.length) + 228 len 4] with:
                         gas gas_remaining wei
                        args mem[arg3.length + ceil32(arg3.length) + 232 len _352 - 4]
                else:
                    mem[floor32(arg3.length) + ceil32(arg3.length) + 228] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 260 len arg3.length % 32]
                    mem[ceil32(arg3.length) + 128] = floor32(arg3.length) + 100
                    mem[64] = floor32(arg3.length) + ceil32(arg3.length) + 260
                    mem[ceil32(arg3.length) + 164 len 28] = 0
                    mem[ceil32(arg3.length) + 160 len 4] = _becomeImplementation(bytes arg1)
                    _358 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                    mem[floor32(arg3.length) + ceil32(arg3.length) + 260 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                    mem[floor32(arg3.length) + ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 260] = mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) + 256, mem[floor32(arg3.length) + ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 260])
                    delegate implementationAddress.mem[floor32(arg3.length) + ceil32(arg3.length) + 260 len 4] with:
                         gas gas_remaining wei
                        args mem[floor32(arg3.length) + ceil32(arg3.length) + 264 len _358 - 4]
                if not return_data.size:
                    if not delegate.return_code:
                        revert with memory
                          from 128
                           len return_data.size
                else:
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                ('bool', 'delegate.return_code')
                emit NewImplementation(implementationAddress, implementationAddress);
            else:
                mem[ceil32(arg3.length) + 128] = 4
                mem[64] = ceil32(arg3.length) + 164
                mem[ceil32(arg3.length) + 160 len 4] = _resignImplementation()
                mem[ceil32(arg3.length) + 164 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 196 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] = mem[ceil32(arg3.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                delegate implementationAddress.mem[ceil32(arg3.length) + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(arg3.length) + 168 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] - 4]
                if return_data.size:
                    mem[ceil32(arg3.length) + 164] = return_data.size
                    mem[ceil32(arg3.length) + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    implementationAddress = arg1
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 201] = 32
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 233] = arg3.length
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 265 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                    if not arg3.length % 32:
                        delegate implementationAddress.mem[ceil32(arg3.length) + ceil32(return_data.size) + floor32(arg3.length + 68) + 165 len 4] with:
                             gas gas_remaining wei
                            args Mask(8 * floor32(arg3.length + 68) - 4, -(8 * floor32(arg3.length + 68)) + 256, mem[ceil32(arg3.length) + ceil32(return_data.size) + 233 len floor32(arg3.length + 68) - 36]) << (8 * floor32(arg3.length + 68)) - 256, mem[arg3.length + ceil32(arg3.length) + ceil32(return_data.size) + floor32(arg3.length + 68) + 265 len arg3.length + -floor32(arg3.length + 68) + 68]
                        if not return_data.size:
                            if not delegate.return_code:
                                revert with memory
                                  from 128
                                   len return_data.size
                        else:
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                        ('bool', 'delegate.return_code')
                        emit NewImplementation(implementationAddress, implementationAddress);
                    else:
                        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(return_data.size) + 265] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(return_data.size) + -(arg3.length % 32) + 297 len arg3.length % 32]
                        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(return_data.size) + 297 len floor32(floor32(arg3.length) + 100)] = _becomeImplementation(bytes arg1), 0, 32, arg3.length, mem[ceil32(arg3.length) + ceil32(return_data.size) + 265 len floor32(floor32(arg3.length) + 100) - 68]
                        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(return_data.size) + floor32(floor32(arg3.length) + 100) + -(floor32(arg3.length) + 100 % 32) + 329 len floor32(arg3.length) + 100 % 32] = mem[ceil32(arg3.length) + ceil32(return_data.size) + (3 * floor32(floor32(arg3.length) + 100)) + (-2 * floor32(arg3.length)) - 3 len floor32(arg3.length) + -floor32(floor32(arg3.length) + 100) + 100]
                        delegate implementationAddress with:
                           funct (Mask(32, 224, _becomeImplementation(bytes arg1), 0, 32, arg3.length, mem[ceil32(arg3.length) + ceil32(return_data.size) + 265 len floor32(floor32(arg3.length) + 100) - 68]) >> 224)
                             gas gas_remaining wei
                            args Mask(8 * floor32(floor32(arg3.length) + 100) - 4, -(8 * floor32(floor32(arg3.length) + 100)) + 256, mem[ceil32(arg3.length) + ceil32(return_data.size) + 265 len floor32(floor32(arg3.length) + 100) - 68]) << (8 * floor32(floor32(arg3.length) + 100)) - 256, mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(return_data.size) + floor32(floor32(arg3.length) + 100) + 297 len floor32(arg3.length) + -floor32(floor32(arg3.length) + 100) + 100]
                        if not return_data.size:
                            if not delegate.return_code:
                                revert with memory
                                  from 128
                                   len return_data.size
                            emit NewImplementation(implementationAddress, implementationAddress);
                        else:
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit NewImplementation(address arg1, address arg2):
                                                   implementationAddress,
                                                   implementationAddress,
                                                   mem[floor32(arg3.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 362 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                else:
                    if not delegate.return_code:
                        revert with memory
                          from 128
                           len return_data.size
                    implementationAddress = arg1
                    mem[ceil32(arg3.length) + 200] = 32
                    mem[ceil32(arg3.length) + 232] = arg3.length
                    mem[ceil32(arg3.length) + 264 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                    if not arg3.length % 32:
                        mem[ceil32(arg3.length) + 164] = arg3.length + 68
                        mem[ceil32(arg3.length) + 200 len 28] = 0
                        mem[ceil32(arg3.length) + 196 len 4] = _becomeImplementation(bytes arg1)
                        mem[arg3.length + ceil32(arg3.length) + 264 len floor32(arg3.length + 68)] = _becomeImplementation(bytes arg1), 0, 0, mem[ceil32(arg3.length) + 232 len floor32(arg3.length + 68) - 36]
                        mem[arg3.length + ceil32(arg3.length) + floor32(arg3.length + 68) + -(arg3.length + 68 % 32) + 296 len arg3.length + 68 % 32] = mem[ceil32(arg3.length) + (2 * floor32(arg3.length + 68)) + -(arg3.length + 68 % 32) + -arg3.length + 128 len arg3.length + 68 % 32]
                        delegate implementationAddress.mem[ceil32(arg3.length) + floor32(arg3.length + 68) + 164 len 4] with:
                             gas gas_remaining wei
                            args Mask(8 * floor32(arg3.length + 68) - 4, -(8 * floor32(arg3.length + 68)) + 256, mem[ceil32(arg3.length) + 232 len floor32(arg3.length + 68) - 36]) << (8 * floor32(arg3.length + 68)) - 256, mem[arg3.length + ceil32(arg3.length) + floor32(arg3.length + 68) + 264 len arg3.length + -floor32(arg3.length + 68) + 68]
                    else:
                        mem[floor32(arg3.length) + ceil32(arg3.length) + 264] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 296 len arg3.length % 32]
                        mem[ceil32(arg3.length) + 164] = floor32(arg3.length) + 100
                        mem[ceil32(arg3.length) + 200 len 28] = 0
                        mem[ceil32(arg3.length) + 196 len 4] = _becomeImplementation(bytes arg1)
                        mem[floor32(arg3.length) + ceil32(arg3.length) + 296 len floor32(floor32(arg3.length) + 100)] = _becomeImplementation(bytes arg1), 0, 0, arg3.length, mem[ceil32(arg3.length) + 264 len floor32(floor32(arg3.length) + 100) - 68]
                        mem[floor32(arg3.length) + ceil32(arg3.length) + floor32(floor32(arg3.length) + 100) + -(floor32(arg3.length) + 100 % 32) + 328 len floor32(arg3.length) + 100 % 32] = mem[ceil32(arg3.length) + (2 * floor32(floor32(arg3.length) + 100)) + -(floor32(arg3.length) + 100 % 32) + -floor32(arg3.length) + 96 len floor32(arg3.length) + 100 % 32]
                        delegate implementationAddress.mem[ceil32(arg3.length) + floor32(floor32(arg3.length) + 100) + 164 len 4] with:
                             gas gas_remaining wei
                            args Mask(8 * floor32(floor32(arg3.length) + 100) - 4, -(8 * floor32(floor32(arg3.length) + 100)) + 256, mem[ceil32(arg3.length) + 264 len floor32(floor32(arg3.length) + 100) - 68]) << (8 * floor32(floor32(arg3.length) + 100)) - 256, mem[floor32(arg3.length) + ceil32(arg3.length) + floor32(floor32(arg3.length) + 100) + 296 len floor32(arg3.length) + -floor32(floor32(arg3.length) + 100) + 100]
                    if not return_data.size:
                        if not delegate.return_code:
                            revert with memory
                              from 128
                               len return_data.size
                    else:
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                    ('bool', 'delegate.return_code')
                    emit NewImplementation(implementationAddress, implementationAddress);
        else:
            if msg.sender != 0x4cfb9547cc08ff66b8374d99f5384c320ae20cdc:
                revert with 0, 
                            32,
                            57,
                            0x6b43457263323044656c656761746f723a3a5f736574496d706c656d656e746174696f6e3a2043616c6c6572206d7573742062652061646d69,
                            mem[ceil32(arg3.length) + 253 len 7]
            if not uint8(stor1.field_160):
                revert with 0, 
                            32,
                            57,
                            0x6b43457263323044656c656761746f723a3a5f736574496d706c656d656e746174696f6e3a2043616c6c6572206d7573742062652061646d69,
                            mem[ceil32(arg3.length) + 253 len 7]
            if not arg2:
                implementationAddress = arg1
                mem[ceil32(arg3.length) + 164] = 32
                mem[ceil32(arg3.length) + 196] = arg3.length
                mem[ceil32(arg3.length) + 228 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                if not arg3.length % 32:
                    mem[ceil32(arg3.length) + 128] = arg3.length + 68
                    mem[64] = arg3.length + ceil32(arg3.length) + 228
                    mem[ceil32(arg3.length) + 164 len 28] = 0
                    mem[ceil32(arg3.length) + 160 len 4] = _becomeImplementation(bytes arg1)
                    _354 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                    mem[arg3.length + ceil32(arg3.length) + 228 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                    mem[arg3.length + ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 260 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] = mem[ceil32(arg3.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                    delegate implementationAddress.mem[arg3.length + ceil32(arg3.length) + 228 len 4] with:
                         gas gas_remaining wei
                        args mem[arg3.length + ceil32(arg3.length) + 232 len _354 - 4]
                else:
                    mem[floor32(arg3.length) + ceil32(arg3.length) + 228] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 260 len arg3.length % 32]
                    mem[ceil32(arg3.length) + 128] = floor32(arg3.length) + 100
                    mem[64] = floor32(arg3.length) + ceil32(arg3.length) + 260
                    mem[ceil32(arg3.length) + 164 len 28] = 0
                    mem[ceil32(arg3.length) + 160 len 4] = _becomeImplementation(bytes arg1)
                    _360 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                    mem[floor32(arg3.length) + ceil32(arg3.length) + 260 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                    mem[floor32(arg3.length) + ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 260] = mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) + 256, mem[floor32(arg3.length) + ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 260])
                    delegate implementationAddress.mem[floor32(arg3.length) + ceil32(arg3.length) + 260 len 4] with:
                         gas gas_remaining wei
                        args mem[floor32(arg3.length) + ceil32(arg3.length) + 264 len _360 - 4]
            else:
                mem[ceil32(arg3.length) + 128] = 4
                mem[64] = ceil32(arg3.length) + 164
                mem[ceil32(arg3.length) + 160 len 4] = _resignImplementation()
                _45 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[ceil32(arg3.length) + 164 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 164] = mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) + 256, mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 164])
                delegate implementationAddress.mem[ceil32(arg3.length) + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(arg3.length) + 168 len _45 - 4]
                if return_data.size:
                    mem[ceil32(arg3.length) + 164] = return_data.size
                    mem[ceil32(arg3.length) + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    implementationAddress = arg1
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 201] = 32
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 233] = arg3.length
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 265 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                    if not arg3.length % 32:
                        delegate implementationAddress.mem[ceil32(arg3.length) + ceil32(return_data.size) + floor32(arg3.length + 68) + 165 len 4] with:
                             gas gas_remaining wei
                            args Mask(8 * floor32(arg3.length + 68) - 4, -(8 * floor32(arg3.length + 68)) + 256, mem[ceil32(arg3.length) + ceil32(return_data.size) + 233 len floor32(arg3.length + 68) - 36]) << (8 * floor32(arg3.length + 68)) - 256, mem[arg3.length + ceil32(arg3.length) + ceil32(return_data.size) + floor32(arg3.length + 68) + 265 len arg3.length + -floor32(arg3.length + 68) + 68]
                    else:
                        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(return_data.size) + 265] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(return_data.size) + -(arg3.length % 32) + 297 len arg3.length % 32]
                        delegate implementationAddress.mem[ceil32(arg3.length) + ceil32(return_data.size) + floor32(floor32(arg3.length) + 100) + 165 len 4] with:
                             gas gas_remaining wei
                            args Mask(8 * floor32(floor32(arg3.length) + 100) - 4, -(8 * floor32(floor32(arg3.length) + 100)) + 256, mem[ceil32(arg3.length) + ceil32(return_data.size) + 265 len floor32(floor32(arg3.length) + 100) - 68]) << (8 * floor32(floor32(arg3.length) + 100)) - 256, mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(return_data.size) + floor32(floor32(arg3.length) + 100) + 297 len floor32(arg3.length) + -floor32(floor32(arg3.length) + 100) + 100]
                else:
                    if not delegate.return_code:
                        revert with memory
                          from 128
                           len return_data.size
                    implementationAddress = arg1
                    mem[ceil32(arg3.length) + 200] = 32
                    mem[ceil32(arg3.length) + 232] = arg3.length
                    mem[ceil32(arg3.length) + 264 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                    if not arg3.length % 32:
                        mem[ceil32(arg3.length) + 164] = arg3.length + 68
                        mem[ceil32(arg3.length) + 196 len 4] = _becomeImplementation(bytes arg1)
                        mem[arg3.length + ceil32(arg3.length) + 264 len floor32(arg3.length + 68)] = 0, 32, mem[ceil32(arg3.length) + 232 len floor32(arg3.length + 68) - 36]
                        mem[arg3.length + ceil32(arg3.length) + floor32(arg3.length + 68) + -(arg3.length + 68 % 32) + 296 len arg3.length + 68 % 32] = mem[ceil32(arg3.length) + (3 * floor32(arg3.length + 68)) + (-2 * arg3.length) + 60 len arg3.length + -floor32(arg3.length + 68) + 68]
                        delegate implementationAddress.mem[ceil32(arg3.length) + floor32(arg3.length + 68) + 164 len 4] with:
                             gas gas_remaining wei
                            args Mask(8 * floor32(arg3.length + 68) - 4, -(8 * floor32(arg3.length + 68)) + 256, mem[ceil32(arg3.length) + 232 len floor32(arg3.length + 68) - 36]) << (8 * floor32(arg3.length + 68)) - 256, mem[arg3.length + ceil32(arg3.length) + floor32(arg3.length + 68) + 264 len arg3.length + -floor32(arg3.length + 68) + 68]
                    else:
                        mem[floor32(arg3.length) + ceil32(arg3.length) + 264] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 296 len arg3.length % 32]
                        mem[ceil32(arg3.length) + 164] = floor32(arg3.length) + 100
                        mem[ceil32(arg3.length) + 196 len 4] = _becomeImplementation(bytes arg1)
                        mem[floor32(arg3.length) + ceil32(arg3.length) + 296 len floor32(floor32(arg3.length) + 100)] = 0, 32, arg3.length, mem[ceil32(arg3.length) + 264 len floor32(floor32(arg3.length) + 100) - 68]
                        mem[floor32(arg3.length) + ceil32(arg3.length) + floor32(floor32(arg3.length) + 100) + -(floor32(arg3.length) + 100 % 32) + 328 len floor32(arg3.length) + 100 % 32] = mem[ceil32(arg3.length) + (2 * floor32(floor32(arg3.length) + 100)) + -(floor32(arg3.length) + 100 % 32) + -floor32(arg3.length) + 96 len floor32(arg3.length) + 100 % 32]
                        delegate implementationAddress.mem[ceil32(arg3.length) + floor32(floor32(arg3.length) + 100) + 164 len 4] with:
                             gas gas_remaining wei
                            args Mask(8 * floor32(floor32(arg3.length) + 100) - 4, -(8 * floor32(floor32(arg3.length) + 100)) + 256, mem[ceil32(arg3.length) + 264 len floor32(floor32(arg3.length) + 100) - 68]) << (8 * floor32(floor32(arg3.length) + 100)) - 256, mem[floor32(arg3.length) + ceil32(arg3.length) + floor32(floor32(arg3.length) + 100) + 296 len floor32(arg3.length) + -floor32(floor32(arg3.length) + 100) + 100]
            if not return_data.size:
                if not delegate.return_code:
                    revert with memory
                      from 128
                       len return_data.size
            else:
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
            ('bool', 'delegate.return_code')
            emit NewImplementation(implementationAddress, implementationAddress);
}



}
