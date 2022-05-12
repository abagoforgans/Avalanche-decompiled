contract main {




// =====================  Runtime code  =====================


#
#  - sub_f7e9da60(?)
#
address owner;
address sub_0690b59eAddress;
address wavaxAddress;
address sub_70bd9804Address;
address sub_de941acdAddress;
address sub_beab4969Address;
address sub_f68616cdAddress;
address sub_35c7a95cAddress;
address sub_6bd048d9Address;
address sub_7e4f2bd9Address;
address sub_371e50cfAddress;
address sub_94f080c1Address;

function sub_0690b59e(?) {
    return sub_0690b59eAddress
}

function wavax() {
    return wavaxAddress
}

function sub_35c7a95c(?) {
    return sub_35c7a95cAddress
}

function sub_371e50cf(?) {
    return sub_371e50cfAddress
}

function sub_6bd048d9(?) {
    return sub_6bd048d9Address
}

function sub_70bd9804(?) {
    return sub_70bd9804Address
}

function sub_7e4f2bd9(?) {
    return sub_7e4f2bd9Address
}

function owner() {
    return owner
}

function sub_94f080c1(?) {
    return sub_94f080c1Address
}

function sub_beab4969(?) {
    return sub_beab4969Address
}

function sub_de941acd(?) {
    return sub_de941acdAddress
}

function sub_f68616cd(?) {
    return sub_f68616cdAddress
}

function _fallback() payable {
  stop
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_8080e8f7(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    call arg2 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _27 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 132] = this.address
        require ext_code.size(address(_27))
        staticcall address(_27).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < arg1.length
        _33 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 132] = arg2
        mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
        require ext_code.size(address(_33))
        call address(_33).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0]
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < arg1.length
        _38 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 132] = arg2
        require ext_code.size(address(_38))
        staticcall address(_38).0x70a08231 with:
                gas gas_remaining wei
               args arg2
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= ext_call.return_data[0]
        idx = idx + 1
        continue 
}

function releaseAllFunds(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _27 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 132] = this.address
        require ext_code.size(address(_27))
        staticcall address(_27).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < arg1.length
        _33 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 132] = owner
        mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
        require ext_code.size(address(_33))
        call address(_33).0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < arg1.length
        _38 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 132] = owner
        require ext_code.size(address(_38))
        staticcall address(_38).0x70a08231 with:
                gas gas_remaining wei
               args owner
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= ext_call.return_data[0]
        idx = idx + 1
        continue 
}

function execute(address[] arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len arg2.length] = arg2[all]
    mem[(32 * arg1.length) + arg2.length + 160] = 0
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _50 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + ceil32(arg2.length) + 164] = msg.sender
        require ext_code.size(address(_50))
        staticcall address(_50).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[(32 * arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < arg1.length
        _59 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + ceil32(arg2.length) + 164] = msg.sender
        mem[(32 * arg1.length) + ceil32(arg2.length) + 196] = this.address
        mem[(32 * arg1.length) + ceil32(arg2.length) + 228] = ext_call.return_data[0]
        require ext_code.size(address(_59))
        call address(_59).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, ext_call.return_data[0]
        mem[(32 * arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < arg1.length
        _71 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + ceil32(arg2.length) + 164] = this.address
        require ext_code.size(address(_71))
        staticcall address(_71).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[(32 * arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= ext_call.return_data[0]
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg2.length:
        call mem[idx + (32 * arg1.length) + 160 len 20].mem[idx + (32 * arg1.length) + 244 len 4] with:
           value mem[idx + (32 * arg1.length) + 180] wei
             gas gas_remaining - 5000 wei
            args mem[idx + (32 * arg1.length) + 248 len mem[idx + (32 * arg1.length) + 212] - 4]
        require ext_call.success
        idx = idx + mem[idx + (32 * arg1.length) + 212] + 84
        continue 
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _115 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + ceil32(arg2.length) + 164] = this.address
        require ext_code.size(address(_115))
        staticcall address(_115).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[(32 * arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < arg1.length
        _121 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + ceil32(arg2.length) + 164] = msg.sender
        mem[(32 * arg1.length) + ceil32(arg2.length) + 196] = ext_call.return_data[0]
        require ext_code.size(address(_121))
        call address(_121).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        mem[(32 * arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < arg1.length
        _126 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + ceil32(arg2.length) + 164] = msg.sender
        require ext_code.size(address(_126))
        staticcall address(_126).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[(32 * arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= ext_call.return_data[0]
        idx = idx + 1
        continue 
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
