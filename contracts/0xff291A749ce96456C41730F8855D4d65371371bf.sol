contract main {




// =====================  Runtime code  =====================


const REVISION = 210


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
uint256 stor51;
uint32 stor308;
address owner;
uint256 stor308;
address stor358;
address stor359;
mapping of address sub_8633da36;
mapping of address sub_7b0551f8;
mapping of struct stor375;
mapping of address sub_39584645;
address stor428;
address stor429;
mapping of address sub_83b4957f;
mapping of address sub_4a96d41a;

function sub_39584645(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    return sub_39584645[address(arg1)][address(arg2)][address(arg3)]
}

function sub_4a96d41a(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    return sub_4a96d41a[address(arg1)][address(arg2)][address(arg3)]
}

function sub_7b0551f8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_7b0551f8[address(arg1)]
}

function sub_83b4957f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_83b4957f[address(arg1)][address(arg2)]
}

function sub_8633da36(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_8633da36[address(arg1)][address(arg2)]
}

function owner() payable {
    return address(owner)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if address(owner) != msg.sender:
        revert with 0, 32, 32, code.data[16374 len 32]
    emit OwnershipTransferred(address(owner), 0);
    address(owner) = 0
}

function setSwapRouter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 32, 32, code.data[16374 len 32]
    stor428 = arg1
}

function sub_ade8d43c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(owner) != msg.sender:
        revert with 0, 32, 32, code.data[16374 len 32]
    stor429 = address(arg1)
}

function upgrade() payable {
    if not uint32(ext_code.size(sha3(0, this.address, 0x506172616d50726f766964657200000000000000000000000000000000000000, sha3(code.data[7013 len 6807])))):
        create2 contract with 0 wei
                        salt: 0x506172616d50726f766964657200000000000000000000000000000000000000
                        code: code.data[7013 len 6807]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 32, 32, code.data[16374 len 32]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[16191 len 38], mem[202 len 26]
    emit OwnershipTransferred(address(owner), arg1);
    address(owner) = arg1
}

function sub_f21be588(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor358 != msg.sender:
        revert with 0, 32, 51, code.data[16229 len 51], mem[179 len 13] >> 152, 0
    create2 contract with 0 wei
                    salt: sha3(address(arg1))
                    code: code.data[13820 len 2371]
    if not create2.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    if uint32(ext_code.size(sha3(0, this.address, 0x506172616d50726f766964657200000000000000000000000000000000000000, sha3(code.data[7013 len 6807])))):
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(sha3(0, this.address, 0x506172616d50726f766964657200000000000000000000000000000000000000, sha3(code.data[7013 len 6807]))), address(this.address), 96, 132, initialize(address arg1, address arg2, uint256 arg3, uint256 arg4), Mask(224, 0, stor308), uint32(stor308), stor429, stor375[address(arg1)].field_0, stor375[address(arg1)].field_256, 0 >> 800, 0
    else:
        create2 contract with 0 wei
                        salt: 0x506172616d50726f766964657200000000000000000000000000000000000000
                        code: code.data[7013 len 6807]
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(create2.new_address), address(this.address), 96, 132, initialize(address arg1, address arg2, uint256 arg3, uint256 arg4), Mask(224, 0, stor308), uint32(stor308), stor429, stor375[address(arg1)].field_0, stor375[address(arg1)].field_256, 0 >> 800, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_7b0551f8[address(arg1)] = address(create2.new_address)
    return address(create2.new_address)
}

function sub_8d9a3cf0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor358 != msg.sender:
        revert with 0, 32, 51, code.data[16229 len 51], mem[179 len 13] >> 152, 0
    if sub_7b0551f8[address(arg1)]:
        require ext_code.size(sub_7b0551f8[address(arg1)])
        call sub_7b0551f8[address(arg1)].implementation() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdde43cba with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 210:
            if uint32(ext_code.size(sha3(0, this.address, 0x506172616d50726f766964657200000000000000000000000000000000000000, sha3(code.data[7013 len 6807])))):
                require ext_code.size(sub_7b0551f8[address(arg1)])
                call sub_7b0551f8[address(arg1)].upgradeTo(address arg1) with:
                     gas gas_remaining wei
                    args address(sha3(0, this.address, 0x506172616d50726f766964657200000000000000000000000000000000000000, sha3(code.data[7013 len 6807])))
            else:
                create2 contract with 0 wei
                                salt: 0x506172616d50726f766964657200000000000000000000000000000000000000
                                code: code.data[7013 len 6807]
                require ext_code.size(sub_7b0551f8[address(arg1)])
                call sub_7b0551f8[address(arg1)].upgradeTo(address arg1) with:
                     gas gas_remaining wei
                    args address(create2.new_address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function sub_ffce24b3(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if stor359 != msg.sender:
        revert with 0, 32, 48, code.data[16326 len 48], mem[176 len 16] >> 128, 0
    require 0 < ('cd', 4).length
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require 0 < ('cd', 4).length
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require 1 < ('cd', 4).length
    require ('cd', 4)[1] == address(('cd', 4)[1])
    if ('cd', 4).length == 2:
        create2 contract with 0 wei
                        salt: sha3(address(('cd', 4)[0]), address(('cd', 4)[1]))
                        code: code.data[13820 len 2371]
        if not create2.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        if uint32(ext_code.size(sha3(0, this.address, 0x506172616d50726f766964657200000000000000000000000000000000000000, sha3(code.data[7013 len 6807])))):
            require ext_code.size(address(create2.new_address))
            call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                 gas gas_remaining wei
                args address(sha3(0, this.address, 0x506172616d50726f766964657200000000000000000000000000000000000000, sha3(code.data[7013 len 6807]))), address(this.address), 96, 132, initialize(address arg1, address arg2, uint256 arg3, uint256 arg4), Mask(224, 0, stor308), uint32(stor308), stor429, stor375[address(('cd', 4)[0])].field_0, stor375[address(('cd', 4)[0])].field_256, 0 >> 800, 0
        else:
            create2 contract with 0 wei
                            salt: 0x506172616d50726f766964657200000000000000000000000000000000000000
                            code: code.data[7013 len 6807]
            require ext_code.size(address(create2.new_address))
            call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                 gas gas_remaining wei
                args address(create2.new_address), address(this.address), 96, 132, initialize(address arg1, address arg2, uint256 arg3, uint256 arg4), Mask(224, 0, stor308), uint32(stor308), stor429, stor375[address(('cd', 4)[0])].field_0, stor375[address(('cd', 4)[0])].field_256, 0 >> 800, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require 0 < ('cd', 4).length
        require ('cd', 4)[0] == address(('cd', 4)[0])
        require 1 < ('cd', 4).length
        require ('cd', 4)[1] == address(('cd', 4)[1])
        sub_8633da36[address(('cd', 4)[0])][address(('cd', 4)[1])] = address(create2.new_address)
    else:
        require 2 < ('cd', 4).length
        require ('cd', 4)[2] == address(('cd', 4)[2])
        create2 contract with 0 wei
                        salt: sha3(address(('cd', 4)[0]), address(('cd', 4)[1]), address(('cd', 4)[2]))
                        code: code.data[13820 len 2371]
        if not create2.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        if uint32(ext_code.size(sha3(0, this.address, 0x506172616d50726f766964657200000000000000000000000000000000000000, sha3(code.data[7013 len 6807])))):
            require ext_code.size(address(create2.new_address))
            call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                 gas gas_remaining wei
                args address(sha3(0, this.address, 0x506172616d50726f766964657200000000000000000000000000000000000000, sha3(code.data[7013 len 6807]))), address(this.address), 96, 132, initialize(address arg1, address arg2, uint256 arg3, uint256 arg4), Mask(224, 0, stor308), uint32(stor308), stor429, stor375[address(('cd', 4)[0])].field_0, stor375[address(('cd', 4)[0])].field_256, 0 >> 800, 0
        else:
            create2 contract with 0 wei
                            salt: 0x506172616d50726f766964657200000000000000000000000000000000000000
                            code: code.data[7013 len 6807]
            require ext_code.size(address(create2.new_address))
            call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                 gas gas_remaining wei
                args address(create2.new_address), address(this.address), 96, 132, initialize(address arg1, address arg2, uint256 arg3, uint256 arg4), Mask(224, 0, stor308), uint32(stor308), stor429, stor375[address(('cd', 4)[0])].field_0, stor375[address(('cd', 4)[0])].field_256, 0 >> 800, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require 0 < ('cd', 4).length
        require ('cd', 4)[0] == address(('cd', 4)[0])
        require 1 < ('cd', 4).length
        require ('cd', 4)[1] == address(('cd', 4)[1])
        require 2 < ('cd', 4).length
        require ('cd', 4)[2] == address(('cd', 4)[2])
        sub_39584645[address(('cd', 4)[0])][address(('cd', 4)[1])][address(('cd', 4)[2])] = address(create2.new_address)
    return address(create2.new_address)
}

function sub_6723d0d9(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if stor359 != msg.sender:
        revert with 0, 32, 48, code.data[16326 len 48], mem[176 len 16] >> 128, 0
    require 0 < ('cd', 4).length
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require 0 < ('cd', 4).length
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require 1 < ('cd', 4).length
    require ('cd', 4)[1] == address(('cd', 4)[1])
    if ('cd', 4).length == 2:
        create2 contract with 0 wei
                        salt: sha3(0, address(('cd', 4)[0]), address(('cd', 4)[1]))
                        code: code.data[13820 len 2371]
        if not create2.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        if uint32(ext_code.size(sha3(0, this.address, 0x506172616d50726f766964657200000000000000000000000000000000000000, sha3(code.data[7013 len 6807])))):
            require ext_code.size(address(create2.new_address))
            call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                 gas gas_remaining wei
                args address(sha3(0, this.address, 0x506172616d50726f766964657200000000000000000000000000000000000000, sha3(code.data[7013 len 6807]))), address(this.address), 96, 132, initialize(address arg1, address arg2, uint256 arg3, uint256 arg4), Mask(224, 0, stor308), uint32(stor308), stor429, stor375[address(('cd', 4)[0])].field_0, stor375[address(('cd', 4)[0])].field_256, 0 >> 800, 0
        else:
            create2 contract with 0 wei
                            salt: 0x506172616d50726f766964657200000000000000000000000000000000000000
                            code: code.data[7013 len 6807]
            require ext_code.size(address(create2.new_address))
            call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                 gas gas_remaining wei
                args address(create2.new_address), address(this.address), 96, 132, initialize(address arg1, address arg2, uint256 arg3, uint256 arg4), Mask(224, 0, stor308), uint32(stor308), stor429, stor375[address(('cd', 4)[0])].field_0, stor375[address(('cd', 4)[0])].field_256, 0 >> 800, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require 0 < ('cd', 4).length
        require ('cd', 4)[0] == address(('cd', 4)[0])
        require 1 < ('cd', 4).length
        require ('cd', 4)[1] == address(('cd', 4)[1])
        sub_83b4957f[address(('cd', 4)[0])][address(('cd', 4)[1])] = address(create2.new_address)
    else:
        require 2 < ('cd', 4).length
        require ('cd', 4)[2] == address(('cd', 4)[2])
        create2 contract with 0 wei
                        salt: sha3(0, address(('cd', 4)[0]), address(('cd', 4)[1]), address(('cd', 4)[2]))
                        code: code.data[13820 len 2371]
        if not create2.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        if uint32(ext_code.size(sha3(0, this.address, 0x506172616d50726f766964657200000000000000000000000000000000000000, sha3(code.data[7013 len 6807])))):
            require ext_code.size(address(create2.new_address))
            call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                 gas gas_remaining wei
                args address(sha3(0, this.address, 0x506172616d50726f766964657200000000000000000000000000000000000000, sha3(code.data[7013 len 6807]))), address(this.address), 96, 132, initialize(address arg1, address arg2, uint256 arg3, uint256 arg4), Mask(224, 0, stor308), uint32(stor308), stor429, stor375[address(('cd', 4)[0])].field_0, stor375[address(('cd', 4)[0])].field_256, 0 >> 800, 0
        else:
            create2 contract with 0 wei
                            salt: 0x506172616d50726f766964657200000000000000000000000000000000000000
                            code: code.data[7013 len 6807]
            require ext_code.size(address(create2.new_address))
            call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                 gas gas_remaining wei
                args address(create2.new_address), address(this.address), 96, 132, initialize(address arg1, address arg2, uint256 arg3, uint256 arg4), Mask(224, 0, stor308), uint32(stor308), stor429, stor375[address(('cd', 4)[0])].field_0, stor375[address(('cd', 4)[0])].field_256, 0 >> 800, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require 0 < ('cd', 4).length
        require ('cd', 4)[0] == address(('cd', 4)[0])
        require 1 < ('cd', 4).length
        require ('cd', 4)[1] == address(('cd', 4)[1])
        require 2 < ('cd', 4).length
        require ('cd', 4)[2] == address(('cd', 4)[2])
        sub_4a96d41a[address(('cd', 4)[0])][address(('cd', 4)[1])][address(('cd', 4)[2])] = address(create2.new_address)
    return address(create2.new_address)
}

function sub_0e4627e0(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if stor359 != msg.sender:
        revert with 0, 32, 48, code.data[16326 len 48], mem[176 len 16] >> 128, 0
    require 0 < ('cd', 4).length
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require 1 < ('cd', 4).length
    require ('cd', 4)[1] == address(('cd', 4)[1])
    if ('cd', 4).length == 2:
        if sub_8633da36[address(('cd', 4)[0])][address(('cd', 4)[1])]:
            require ext_code.size(sub_8633da36[address(('cd', 4)[0])][address(('cd', 4)[1])])
            call sub_8633da36[address(('cd', 4)[0])][address(('cd', 4)[1])].implementation() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdde43cba with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 210:
                if uint32(ext_code.size(sha3(0, this.address, 0x506172616d50726f766964657200000000000000000000000000000000000000, sha3(code.data[7013 len 6807])))):
                    require ext_code.size(sub_8633da36[address(('cd', 4)[0])][address(('cd', 4)[1])])
                    call sub_8633da36[address(('cd', 4)[0])][address(('cd', 4)[1])].upgradeTo(address arg1) with:
                         gas gas_remaining wei
                        args address(sha3(0, this.address, 0x506172616d50726f766964657200000000000000000000000000000000000000, sha3(code.data[7013 len 6807])))
                else:
                    create2 contract with 0 wei
                                    salt: 0x506172616d50726f766964657200000000000000000000000000000000000000
                                    code: code.data[7013 len 6807]
                    require ext_code.size(sub_8633da36[address(('cd', 4)[0])][address(('cd', 4)[1])])
                    call sub_8633da36[address(('cd', 4)[0])][address(('cd', 4)[1])].upgradeTo(address arg1) with:
                         gas gas_remaining wei
                        args address(create2.new_address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        require 2 < ('cd', 4).length
        require ('cd', 4)[2] == address(('cd', 4)[2])
        if sub_39584645[address(('cd', 4)[0])][address(('cd', 4)[1])][address(('cd', 4)[2])]:
            require ext_code.size(sub_39584645[address(('cd', 4)[0])][address(('cd', 4)[1])][address(('cd', 4)[2])])
            call sub_39584645[address(('cd', 4)[0])][address(('cd', 4)[1])][address(('cd', 4)[2])].implementation() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdde43cba with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 210:
                if uint32(ext_code.size(sha3(0, this.address, 0x506172616d50726f766964657200000000000000000000000000000000000000, sha3(code.data[7013 len 6807])))):
                    require ext_code.size(sub_39584645[address(('cd', 4)[0])][address(('cd', 4)[1])][address(('cd', 4)[2])])
                    call sub_39584645[address(('cd', 4)[0])][address(('cd', 4)[1])][address(('cd', 4)[2])].upgradeTo(address arg1) with:
                         gas gas_remaining wei
                        args address(sha3(0, this.address, 0x506172616d50726f766964657200000000000000000000000000000000000000, sha3(code.data[7013 len 6807])))
                else:
                    create2 contract with 0 wei
                                    salt: 0x506172616d50726f766964657200000000000000000000000000000000000000
                                    code: code.data[7013 len 6807]
                    require ext_code.size(sub_39584645[address(('cd', 4)[0])][address(('cd', 4)[1])][address(('cd', 4)[2])])
                    call sub_39584645[address(('cd', 4)[0])][address(('cd', 4)[1])][address(('cd', 4)[2])].upgradeTo(address arg1) with:
                         gas gas_remaining wei
                        args address(create2.new_address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}

function sub_2d74ea93(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if stor359 != msg.sender:
        revert with 0, 32, 48, code.data[16326 len 48], mem[176 len 16] >> 128, 0
    require 0 < ('cd', 4).length
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require 1 < ('cd', 4).length
    require ('cd', 4)[1] == address(('cd', 4)[1])
    if ('cd', 4).length == 2:
        if sub_83b4957f[address(('cd', 4)[0])][address(('cd', 4)[1])]:
            require ext_code.size(sub_83b4957f[address(('cd', 4)[0])][address(('cd', 4)[1])])
            call sub_83b4957f[address(('cd', 4)[0])][address(('cd', 4)[1])].implementation() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdde43cba with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 210:
                if uint32(ext_code.size(sha3(0, this.address, 0x506172616d50726f766964657200000000000000000000000000000000000000, sha3(code.data[7013 len 6807])))):
                    require ext_code.size(sub_83b4957f[address(('cd', 4)[0])][address(('cd', 4)[1])])
                    call sub_83b4957f[address(('cd', 4)[0])][address(('cd', 4)[1])].upgradeTo(address arg1) with:
                         gas gas_remaining wei
                        args address(sha3(0, this.address, 0x506172616d50726f766964657200000000000000000000000000000000000000, sha3(code.data[7013 len 6807])))
                else:
                    create2 contract with 0 wei
                                    salt: 0x506172616d50726f766964657200000000000000000000000000000000000000
                                    code: code.data[7013 len 6807]
                    require ext_code.size(sub_83b4957f[address(('cd', 4)[0])][address(('cd', 4)[1])])
                    call sub_83b4957f[address(('cd', 4)[0])][address(('cd', 4)[1])].upgradeTo(address arg1) with:
                         gas gas_remaining wei
                        args address(create2.new_address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        require 2 < ('cd', 4).length
        require ('cd', 4)[2] == address(('cd', 4)[2])
        if sub_4a96d41a[address(('cd', 4)[0])][address(('cd', 4)[1])][address(('cd', 4)[2])]:
            require ext_code.size(sub_4a96d41a[address(('cd', 4)[0])][address(('cd', 4)[1])][address(('cd', 4)[2])])
            call sub_4a96d41a[address(('cd', 4)[0])][address(('cd', 4)[1])][address(('cd', 4)[2])].implementation() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdde43cba with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 210:
                if uint32(ext_code.size(sha3(0, this.address, 0x506172616d50726f766964657200000000000000000000000000000000000000, sha3(code.data[7013 len 6807])))):
                    require ext_code.size(sub_4a96d41a[address(('cd', 4)[0])][address(('cd', 4)[1])][address(('cd', 4)[2])])
                    call sub_4a96d41a[address(('cd', 4)[0])][address(('cd', 4)[1])][address(('cd', 4)[2])].upgradeTo(address arg1) with:
                         gas gas_remaining wei
                        args address(sha3(0, this.address, 0x506172616d50726f766964657200000000000000000000000000000000000000, sha3(code.data[7013 len 6807])))
                else:
                    create2 contract with 0 wei
                                    salt: 0x506172616d50726f766964657200000000000000000000000000000000000000
                                    code: code.data[7013 len 6807]
                    require ext_code.size(sub_4a96d41a[address(('cd', 4)[0])][address(('cd', 4)[1])][address(('cd', 4)[2])])
                    call sub_4a96d41a[address(('cd', 4)[0])][address(('cd', 4)[1])][address(('cd', 4)[2])].upgradeTo(address arg1) with:
                         gas gas_remaining wei
                        args address(create2.new_address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}

function sub_427f0b6e(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (64 * ('cd', 100).length) + 36 <= calldata.size
    if uint8(stor0.field_8):
        address(owner) = msg.sender
        emit OwnershipTransferred(0, msg.sender);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[16280 len 46], mem[210 len 18]
        if uint8(stor0.field_8):
            address(owner) = msg.sender
            emit OwnershipTransferred(0, msg.sender);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[16280 len 46], mem[210 len 18]
            if uint8(stor0.field_8):
                address(owner) = msg.sender
                emit OwnershipTransferred(0, msg.sender);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                uint8(stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[16280 len 46], mem[210 len 18]
                if uint8(stor0.field_8):
                    address(owner) = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[16280 len 46], mem[210 len 18]
                    if uint8(stor0.field_8):
                        address(owner) = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if ext_code.size(this.address):
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[16280 len 46], mem[210 len 18]
                        if uint8(stor0.field_8):
                            address(owner) = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            address(owner) = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                            uint8(stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[16280 len 46], mem[210 len 18]
                            if not uint8(stor0.field_8):
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
    if 210 <= stor51:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 40, code.data[16406 len 40], mem[204 len 24]
    stor51 = 210
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
    require ('cd', 100).length == ('cd', 68).length
    idx = 0
    while idx < ('cd', 68).length:
        require idx < ('cd', 100).length
        require idx < ('cd', 68).length
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[68] + 36)])
        mem[32] = 375
        stor375[address(cd[((32 * idx) + cd[68] + 36)])].field_0 = cd[((64 * idx) + cd[100] + 36)]
        stor375[address(cd[((32 * idx) + cd[68] + 36)])].field_256 = cd[((64 * idx) + cd[100] + 68)]
        idx = idx + 1
        continue 
    stor358 = address(cd[4])
    stor359 = address(cd[36])
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}



}
