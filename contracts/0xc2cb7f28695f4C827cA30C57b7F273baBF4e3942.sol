contract main {




// =====================  Runtime code  =====================


address underlyingAddress;
address stor1;
address stor2;

function underlying() payable {
    return underlyingAddress
}

function _fallback() payable {
    revert
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return 1
}

function depositVault(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return 1
}

function change(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0, 'n'
    stor1 = arg1
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0, 'n'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor2, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_27fe98ac(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if stor2 != msg.sender:
        revert with 0, 'n'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 36] = stor1
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)]), stor1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _15 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_15] == mem[_15]
        if mem[_15] > 0:
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _19 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_19] == mem[_19]
            if mem[_19] > 0:
                if idx >= ('cd', 36).length:
                    revert with 'NH{q', 50
                if block.timestamp > -86401:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x8d7d3eea00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = cd[((32 * idx) + cd[36] + 36)]
                mem[mem[64] + 132] = block.timestamp + (24 * 3600)
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = 0
                mem[mem[64] + 228] = 0
                mem[mem[64] + 260] = 1
                require ext_code.size(stor1)
                call stor1.anySwapOutUnderlyingWithPermit(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint8 arg6, bytes32 arg7, bytes32 arg8, uint256 arg9) with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + cd[4] + 36)]), address(this.address), address(this.address), cd[((32 * idx) + cd[36] + 36)], block.timestamp + (24 * 3600), 0, 0, 0, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
