contract main {




// =====================  Runtime code  =====================


address authorityAddress;
address owner;
address cacheAddress;

function cache() {
    return cacheAddress
}

function owner() {
    return owner
}

function authority() {
    return authorityAddress
}

function _fallback() payable {
  stop
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 32, 20, 0xfe64732d617574682d756e617574686f72697a65640000000000000000000000
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 32, 20, 0xfe64732d617574682d756e617574686f72697a65640000000000000000000000
    owner = arg1
    emit LogSetOwner(arg1);
}

function setAuthority(address arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 32, 20, 0xfe64732d617574682d756e617574686f72697a65640000000000000000000000
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 32, 20, 0xfe64732d617574682d756e617574686f72697a65640000000000000000000000
    authorityAddress = arg1
    emit LogSetAuthority(arg1);
}

function setCache(address arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 32, 20, 0xfe64732d617574682d756e617574686f72697a65640000000000000000000000
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 32, 20, 0xfe64732d617574682d756e617574686f72697a65640000000000000000000000
    if not arg1:
        revert with 0, 'ds-proxy-cache-address-required'
    cacheAddress = arg1
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    return 1
}

function execute(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 32, 20, 0xfe64732d617574682d756e617574686f72697a65640000000000000000000000
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 32, 20, 0xfe64732d617574682d756e617574686f72697a65640000000000000000000000
    if not arg1:
        revert with 0, 'ds-proxy-target-address-required'
    delegate arg1 with:
         gas gas_remaining - 5000 wei
        args arg2[all]
    if not delegate.return_code == 1:
        revert with ext_call.return_data[0 len return_data.size]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function execute(bytes arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 164] = 32
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 196] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 228 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    require ext_code.size(cacheAddress)
    staticcall cacheAddress with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(ext_call.return_data[0]):
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 164] = 32
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 196] = arg1.length
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 228 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        require ext_code.size(cacheAddress)
        call cacheAddress with:
             gas gas_remaining wei
            args Array(len=arg1.length, data=arg1[all])
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 32, 20, 0xfe64732d617574682d756e617574686f72697a65640000000000000000000000
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 164] = msg.sender
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 196] = this.address
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 228] = call.func_hash
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, this.address, call.func_hash
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 32, 20, 0xfe64732d617574682d756e617574686f72697a65640000000000000000000000
    if not address(ext_call.return_data[0]):
        revert with 0, 'ds-proxy-target-address-required'
    delegate ext_call.return_data[0].mem[ceil32(arg1.length) + 160 len 4] with:
         gas gas_remaining - 5000 wei
        args mem[ceil32(arg1.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 4]
    if not delegate.return_code == 1:
        revert with ext_call.return_data[0 len return_data.size]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    return address(ext_call.return_data[0]), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}



}
