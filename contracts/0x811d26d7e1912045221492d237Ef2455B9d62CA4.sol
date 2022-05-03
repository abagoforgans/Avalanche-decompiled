contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;

function isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function getOwner() {
    return owner
}

function _fallback() payable {
    revert
}

function add(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe4f6e6c79206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[198 len 30]
    stor1[address(arg1)] = 1
    emit AddedToWhitelist(arg1);
}

function remove(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe4f6e6c79206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[198 len 30]
    stor1[address(arg1)] = 0
    emit RemovedFromWhitelist(arg1);
}

function sub_3817d5ba(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not stor1[address(msg.sender)]:
        revert with 0, 'address must in writelist'
    require ('cd', 4).length > 0
    idx = 0
    while uint32(idx) < ('cd', 4).length:
        require ('cd', 4).length
        call address(cd[((32 * uint32(idx)) + cd[4] + 36)]) with:
           value msg.value / ('cd', 4).length wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_7a728217(?) payable {
    require calldata.size - 4 >= 96
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if not stor1[address(msg.sender)]:
        revert with 0, 'address must in writelist'
    require ('cd', 36).length > 0
    idx = 0
    while uint32(idx) < ('cd', 36).length:
        mem[100] = msg.sender
        mem[132] = address(cd[((32 * uint32(idx)) + cd[36] + 36)])
        mem[164] = cd[68]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(cd[((32 * uint32(idx)) + cd[36] + 36)]), cd[68]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
}



}
