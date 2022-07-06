contract main {




// =====================  Runtime code  =====================


address implementationAddress;

function implementation() {
    return implementationAddress
}

function _fallback() payable {
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function upgradeTo(address arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if not arg1:
        revert with 0, 'WitnetProxy: null implementation'
    if not implementationAddress:
        mem[ceil32(ceil32(arg2.length)) + 197 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        if ceil32(arg2.length) <= arg2.length:
            mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + 197 len floor32(ceil32(arg2.length) + 99)] = initialize(bytes arg1), 0, 0, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[ceil32(ceil32(arg2.length)) + ceil32(arg2.length) + 197 len floor32(ceil32(arg2.length) + 99) + -ceil32(arg2.length) - 68]
            if floor32(ceil32(arg2.length) + 99) > ceil32(arg2.length) + 68:
                mem[(2 * ceil32(arg2.length)) + ceil32(ceil32(arg2.length)) + 265] = 0
            delegate arg1.mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + 197 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + 201 len (2 * ceil32(arg2.length)) + 64]
            if not delegate.return_code:
                revert with 0, 'WitnetProxy: unable to initialize'
            implementationAddress = arg1
            emit Upgraded(arg1);
            staticcall arg1.isUpgradable() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'WitnetProxy: not compliant'
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            return bool(ext_call.return_data[0])
        mem[ceil32(ceil32(arg2.length)) + arg2.length + 197] = 0
        mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + 197 len floor32(ceil32(arg2.length) + 99)] = initialize(bytes arg1), 0, 0, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, Mask(8 * floor32(ceil32(arg2.length) + 99) + -ceil32(arg2.length) - 68, -(8 * floor32(ceil32(arg2.length) + 99) + -arg2.length - 68) + 256, 0) >> -(8 * floor32(ceil32(arg2.length) + 99) + -arg2.length - 68) + 256
        if floor32(ceil32(arg2.length) + 99) > ceil32(arg2.length) + 68:
            mem[(2 * ceil32(arg2.length)) + ceil32(ceil32(arg2.length)) + 265] = 0
        delegate arg1 with:
           funct (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
             gas gas_remaining wei
            args Mask(8 * -ceil32(arg2.length) + arg2.length + 28, 0, 0), mem[ceil32(ceil32(arg2.length)) + arg2.length + 229 len (4 * ceil32(arg2.length)) + -arg2.length + 36]
        if not delegate.return_code:
            revert with 0, 'WitnetProxy: unable to initialize'
        implementationAddress = arg1
        emit Upgraded(arg1);
        staticcall arg1.isUpgradable() with:
                gas gas_remaining wei
        if return_data.size:
            if not ext_call.success:
                revert with 0, 'WitnetProxy: not compliant'
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            return bool(ext_call.return_data[0])
        mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + 197] = ext_call.return_data[0]
        if not ext_call.success:
            revert with 0, 'WitnetProxy: not compliant'
        require return_data.size >= 32
        require Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(ceil32(arg2.length)) + arg2.length + 229 len -arg2.length + ceil32(arg2.length)] == bool(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(ceil32(arg2.length)) + arg2.length + 229 len -arg2.length + ceil32(arg2.length)])
        mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 197] = bool(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(ceil32(arg2.length)) + arg2.length + 229 len -arg2.length + ceil32(arg2.length)])
        return memory
          from ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 197
           len 32
    if arg1 == implementationAddress:
        revert with 0, 'WitnetProxy: nothing to upgrade'
    staticcall implementationAddress.isUpgradable() with:
            gas gas_remaining wei
    mem[ceil32(ceil32(arg2.length)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with 0, 'WitnetProxy: unable to check upgradability'
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'WitnetProxy: not upgradable'
    mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 97] = 36
    mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 133 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 129 len 4] = isUpgradableFrom(address arg1)
    mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 165 len 64] = isUpgradableFrom(address arg1), msg.sender, mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 165 len 28]
    delegate implementationAddress.mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 165 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 169]
    if not return_data.size:
        if not delegate.return_code:
            revert with 0, 'WitnetProxy: not compliant'
        require arg2.length >= 32
        require mem[128] == bool(mem[128])
        if not mem[128]:
            revert with 0, 'WitnetProxy: not authorized'
        staticcall arg1.proxiableUUID() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        staticcall implementationAddress.proxiableUUID() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'WitnetProxy: proxiableUUIDs mismatch'
        mem[ceil32(ceil32(arg2.length)) + (4 * ceil32(return_data.size)) + 265 len ceil32(arg2.length)] = arg2[all], ext_call.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]
        if ceil32(arg2.length) <= arg2.length:
            mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + (4 * ceil32(return_data.size)) + 265 len floor32(ceil32(arg2.length) + 99)] = 0, 32, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], ext_call.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[ceil32(ceil32(arg2.length)) + (4 * ceil32(return_data.size)) + ceil32(arg2.length) + 265 len floor32(ceil32(arg2.length) + 99) + -ceil32(arg2.length) - 68]
            if floor32(ceil32(arg2.length) + 99) > ceil32(arg2.length) + 68:
                mem[(2 * ceil32(arg2.length)) + ceil32(ceil32(arg2.length)) + (4 * ceil32(return_data.size)) + 333] = 0
            delegate arg1.mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + (4 * ceil32(return_data.size)) + 265 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + (4 * ceil32(return_data.size)) + 269 len ceil32(arg2.length) + 64]
            if not delegate.return_code:
                revert with 0, 'WitnetProxy: unable to initialize'
            implementationAddress = arg1
            emit Upgraded(arg1);
            staticcall arg1.isUpgradable() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'WitnetProxy: not compliant'
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            return bool(ext_call.return_data[0])
        mem[ceil32(ceil32(arg2.length)) + (4 * ceil32(return_data.size)) + arg2.length + 265] = 0
        mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + (4 * ceil32(return_data.size)) + 265 len floor32(ceil32(arg2.length) + 99)] = 0, 32, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], ext_call.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, Mask(8 * floor32(ceil32(arg2.length) + 99) + -ceil32(arg2.length) - 68, -(8 * floor32(ceil32(arg2.length) + 99) + -arg2.length - 68) + 256, 0) >> -(8 * floor32(ceil32(arg2.length) + 99) + -arg2.length - 68) + 256
        if floor32(ceil32(arg2.length) + 99) > ceil32(arg2.length) + 68:
            mem[(2 * ceil32(arg2.length)) + ceil32(ceil32(arg2.length)) + (4 * ceil32(return_data.size)) + 333] = 0
        delegate arg1 with:
           funct (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
             gas gas_remaining wei
            args Mask(8 * -ceil32(arg2.length) + arg2.length + 28, 0, 0), mem[ceil32(ceil32(arg2.length)) + (4 * ceil32(return_data.size)) + arg2.length + 297 len (2 * ceil32(arg2.length)) + -arg2.length + 36]
        if not delegate.return_code:
            revert with 0, 'WitnetProxy: unable to initialize'
        implementationAddress = arg1
        emit Upgraded(arg1);
        staticcall arg1.isUpgradable() with:
                gas gas_remaining wei
        if return_data.size:
            if not ext_call.success:
                revert with 0, 'WitnetProxy: not compliant'
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            return bool(ext_call.return_data[0])
        mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + (4 * ceil32(return_data.size)) + 265] = ext_call.return_data[0]
        if not ext_call.success:
            revert with 0, 'WitnetProxy: not compliant'
        require return_data.size >= 32
        require Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(ceil32(arg2.length)) + (4 * ceil32(return_data.size)) + arg2.length + 297 len -arg2.length + ceil32(arg2.length)] == bool(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(ceil32(arg2.length)) + (4 * ceil32(return_data.size)) + arg2.length + 297 len -arg2.length + ceil32(arg2.length)])
        mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + (6 * ceil32(return_data.size)) + 265] = bool(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(ceil32(arg2.length)) + (4 * ceil32(return_data.size)) + arg2.length + 297 len -arg2.length + ceil32(arg2.length)])
        return memory
          from ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + (6 * ceil32(return_data.size)) + 265
           len 32
    mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 197 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not delegate.return_code:
        revert with 0, 'WitnetProxy: not compliant'
    require return_data.size >= 32
    require mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 197 len 4], 0 == bool(mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 197 len 4], 0)
    if not mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 197 len 4], 0:
        revert with 0, 'WitnetProxy: not authorized'
    staticcall arg1.proxiableUUID() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall implementationAddress.proxiableUUID() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'WitnetProxy: proxiableUUIDs mismatch'
    mem[ceil32(ceil32(arg2.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 266 len ceil32(arg2.length)] = arg2[all], ext_call.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) <= arg2.length:
        mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 266 len floor32(ceil32(arg2.length) + 99)] = 0, 32, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], ext_call.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[ceil32(ceil32(arg2.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(arg2.length) + 266 len floor32(ceil32(arg2.length) + 99) + -ceil32(arg2.length) - 68]
        if floor32(ceil32(arg2.length) + 99) > ceil32(arg2.length) + 68:
            mem[(2 * ceil32(arg2.length)) + ceil32(ceil32(arg2.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 334] = 0
        delegate arg1.mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 266 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 270 len ceil32(arg2.length) + 64]
        if not delegate.return_code:
            revert with 0, 'WitnetProxy: unable to initialize'
        implementationAddress = arg1
        emit Upgraded(arg1);
        staticcall arg1.isUpgradable() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'WitnetProxy: not compliant'
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        return bool(ext_call.return_data[0])
    mem[ceil32(ceil32(arg2.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + arg2.length + 266] = 0
    mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 266 len floor32(ceil32(arg2.length) + 99)] = 0, 32, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], ext_call.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, Mask(8 * floor32(ceil32(arg2.length) + 99) + -ceil32(arg2.length) - 68, -(8 * floor32(ceil32(arg2.length) + 99) + -arg2.length - 68) + 256, 0) >> -(8 * floor32(ceil32(arg2.length) + 99) + -arg2.length - 68) + 256
    if floor32(ceil32(arg2.length) + 99) > ceil32(arg2.length) + 68:
        mem[(2 * ceil32(arg2.length)) + ceil32(ceil32(arg2.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 334] = 0
    delegate arg1 with:
       funct (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
         gas gas_remaining wei
        args Mask(8 * -ceil32(arg2.length) + arg2.length + 28, 0, 0), mem[ceil32(ceil32(arg2.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + arg2.length + 298 len (2 * ceil32(arg2.length)) + -arg2.length + 36]
    if not delegate.return_code:
        revert with 0, 'WitnetProxy: unable to initialize'
    implementationAddress = arg1
    emit Upgraded(arg1);
    staticcall arg1.isUpgradable() with:
            gas gas_remaining wei
    if return_data.size:
        if not ext_call.success:
            revert with 0, 'WitnetProxy: not compliant'
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        return bool(ext_call.return_data[0])
    mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 266] = ext_call.return_data[0]
    if not ext_call.success:
        revert with 0, 'WitnetProxy: not compliant'
    require return_data.size >= 32
    require Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(ceil32(arg2.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + arg2.length + 298 len -arg2.length + ceil32(arg2.length)] == bool(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(ceil32(arg2.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + arg2.length + 298 len -arg2.length + ceil32(arg2.length)])
    mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 266] = bool(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(ceil32(arg2.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + arg2.length + 298 len -arg2.length + ceil32(arg2.length)])
    return memory
      from ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 266
       len 32
}



}
