contract main {




// =====================  Runtime code  =====================


const getImplementationAddress = address(sha3(0, address(this.address), 0x5072696365466565640000000000000000000000000000000000000000000000, sha3(code.data[3376 len 7457])))

const REVISION = 27


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
uint32 stor51;
address owner;
uint256 stor51;
mapping of address sub_9f0514ad;
address stor102;

function owner() payable {
    return address(owner)
}

function sub_9f0514ad(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_9f0514ad[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(address(owner), 0);
    address(owner) = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[13204 len 38], mem[202 len 26]
    emit OwnershipTransferred(address(owner), arg1);
    address(owner) = arg1
}

function upgrade() payable {
    mem[128 len 7457] = code.data[3376 len 7457]
    mem[96] = 7457
    mem[7648] = 0xff00000000000000000000000000000000000000000000000000000000000000
    mem[7649] = address(this.address)
    mem[7669] = 0x5072696365466565640000000000000000000000000000000000000000000000
    mem[7701] = sha3(code.data[3376 len 7457])
    mem[7616] = 85
    if not uint32(ext_code.size(sha3(0, this.address, 0x5072696365466565640000000000000000000000000000000000000000000000, sha3(code.data[3376 len 7457])))):
        mem[7765 len 7457] = code.data[3376 len 7457]
        mem[7733] = 7457
        mem[64] = 15232
        create2 contract with 0 wei
                        salt: 0x5072696365466565640000000000000000000000000000000000000000000000
                        code: code.data[3376 len 7457]
        if not ext_code.size(create2.new_address):
            revert with memory
              from 0
               len 'Problem deploying contract'
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        address(owner) = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        stor102 = arg1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[13242 len 46], mem[210 len 18]
        if uint8(stor0.field_8):
            address(owner) = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            stor102 = arg1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[13242 len 46], mem[210 len 18]
            if uint8(stor0.field_8):
                address(owner) = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                stor102 = arg1
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[13242 len 46], mem[210 len 18]
                if uint8(stor0.field_8):
                    address(owner) = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    stor102 = arg1
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[13242 len 46], mem[210 len 18]
                    if uint8(stor0.field_8):
                        address(owner) = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        stor102 = arg1
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        address(owner) = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        stor102 = arg1
                        uint8(stor0.field_8) = 0
}

function sub_68aa1f36(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x313ce567 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x313ce567 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    mem[0] = address(arg2)
    mem[32] = sha3(address(arg1), 101)
    if sub_9f0514ad[address(arg1)][address(arg2)]:
        if uint32(ext_code.size(sub_9f0514ad[address(arg1)][address(arg2)])):
            require ext_code.size(sub_9f0514ad[address(arg1)][address(arg2)])
            staticcall sub_9f0514ad[address(arg1)][address(arg2)].0xdde43cba with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                mem[(2 * ceil32(return_data.size)) + 128 len 7457] = code.data[3376 len 7457]
                mem[(2 * ceil32(return_data.size)) + 96] = 7457
                mem[floor32((2 * ceil32(return_data.size)) + 7616) + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[floor32((2 * ceil32(return_data.size)) + 7616) + 33] = address(this.address)
                mem[floor32((2 * ceil32(return_data.size)) + 7616) + 53] = 0x5072696365466565640000000000000000000000000000000000000000000000
                mem[floor32((2 * ceil32(return_data.size)) + 7616) + 85] = sha3(code.data[3376 len 7457])
                mem[floor32((2 * ceil32(return_data.size)) + 7616)] = 85
                if uint32(ext_code.size(sha3(0, this.address, 0x5072696365466565640000000000000000000000000000000000000000000000, sha3(code.data[3376 len 7457])))):
                    require ext_code.size(sub_9f0514ad[address(arg1)][address(arg2)])
                    call sub_9f0514ad[address(arg1)][address(arg2)].upgradeTo(address rg1) with:
                         gas gas_remaining wei
                        args address(sha3(0, this.address, 0x5072696365466565640000000000000000000000000000000000000000000000, sha3(code.data[3376 len 7457])))
                else:
                    mem[floor32((2 * ceil32(return_data.size)) + 7616) + 149 len 7457] = code.data[3376 len 7457]
                    mem[floor32((2 * ceil32(return_data.size)) + 7616) + 117] = 7457
                    mem[64] = floor32(floor32((2 * ceil32(return_data.size)) + 7616) + 7637)
                    create2 contract with 0 wei
                                    salt: 0x5072696365466565640000000000000000000000000000000000000000000000
                                    code: code.data[3376 len 7457]
                    if not ext_code.size(create2.new_address):
                        revert with memory
                          from 0
                           len 'Problem deploying contract'
                    require ext_code.size(sub_9f0514ad[address(arg1)][address(arg2)])
                    call sub_9f0514ad[address(arg1)][address(arg2)].upgradeTo(address rg1) with:
                         gas gas_remaining wei
                        args address(create2.new_address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                if ext_call.return_data[0] < 27:
                    mem[(4 * ceil32(return_data.size)) + 128 len 7457] = code.data[3376 len 7457]
                    mem[(4 * ceil32(return_data.size)) + 96] = 7457
                    mem[floor32((4 * ceil32(return_data.size)) + 7616) + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[floor32((4 * ceil32(return_data.size)) + 7616) + 33] = address(this.address)
                    mem[floor32((4 * ceil32(return_data.size)) + 7616) + 53] = 0x5072696365466565640000000000000000000000000000000000000000000000
                    mem[floor32((4 * ceil32(return_data.size)) + 7616) + 85] = sha3(code.data[3376 len 7457])
                    mem[floor32((4 * ceil32(return_data.size)) + 7616)] = 85
                    if uint32(ext_code.size(sha3(0, this.address, 0x5072696365466565640000000000000000000000000000000000000000000000, sha3(code.data[3376 len 7457])))):
                        require ext_code.size(sub_9f0514ad[address(arg1)][address(arg2)])
                        call sub_9f0514ad[address(arg1)][address(arg2)].upgradeTo(address rg1) with:
                             gas gas_remaining wei
                            args address(sha3(0, this.address, 0x5072696365466565640000000000000000000000000000000000000000000000, sha3(code.data[3376 len 7457])))
                    else:
                        mem[floor32((4 * ceil32(return_data.size)) + 7616) + 149 len 7457] = code.data[3376 len 7457]
                        mem[floor32((4 * ceil32(return_data.size)) + 7616) + 117] = 7457
                        mem[64] = floor32(floor32((4 * ceil32(return_data.size)) + 7616) + 7637)
                        create2 contract with 0 wei
                                        salt: 0x5072696365466565640000000000000000000000000000000000000000000000
                                        code: code.data[3376 len 7457]
                        if not ext_code.size(create2.new_address):
                            revert with memory
                              from 0
                               len 'Problem deploying contract'
                        require ext_code.size(sub_9f0514ad[address(arg1)][address(arg2)])
                        call sub_9f0514ad[address(arg1)][address(arg2)].upgradeTo(address rg1) with:
                             gas gas_remaining wei
                            args address(create2.new_address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            return sub_9f0514ad[address(arg1)][address(arg2)]
    mem[(2 * ceil32(return_data.size)) + 128] = address(arg1)
    mem[(2 * ceil32(return_data.size)) + 148] = address(arg2)
    mem[(2 * ceil32(return_data.size)) + 96] = 40
    mem[(2 * ceil32(return_data.size)) + 204] = address(owner)
    mem[(2 * ceil32(return_data.size)) + 236] = stor102
    mem[(2 * ceil32(return_data.size)) + 268] = address(arg1)
    mem[(2 * ceil32(return_data.size)) + 300] = address(arg2)
    mem[(2 * ceil32(return_data.size)) + 332] = uint8(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 364] = uint8(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 168] = 196
    mem[(2 * ceil32(return_data.size)) + 204 len 28] = Mask(224, 0, stor51)
    mem[(2 * ceil32(return_data.size)) + 200 len 4] = 2179795234
    create2 contract with 0 wei
                    salt: sha3(address(arg1), address(arg2))
                    code: code.data[10833 len 2371]
    if not create2.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 428 len 7457] = code.data[3376 len 7457]
    mem[(2 * ceil32(return_data.size)) + 396] = 7457
    mem[floor32((2 * ceil32(return_data.size)) + 7916) + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
    mem[floor32((2 * ceil32(return_data.size)) + 7916) + 33] = address(this.address)
    mem[floor32((2 * ceil32(return_data.size)) + 7916) + 53] = 0x5072696365466565640000000000000000000000000000000000000000000000
    mem[floor32((2 * ceil32(return_data.size)) + 7916) + 85] = sha3(code.data[3376 len 7457])
    mem[floor32((2 * ceil32(return_data.size)) + 7916)] = 85
    if uint32(ext_code.size(sha3(0, this.address, 0x5072696365466565640000000000000000000000000000000000000000000000, sha3(code.data[3376 len 7457])))):
        mem[floor32((2 * ceil32(return_data.size)) + 7916) + 121] = address(sha3(0, this.address, 0x5072696365466565640000000000000000000000000000000000000000000000, sha3(code.data[3376 len 7457])))
        mem[floor32((2 * ceil32(return_data.size)) + 7916) + 153] = this.address
        mem[floor32((2 * ceil32(return_data.size)) + 7916) + 185] = 96
        mem[floor32((2 * ceil32(return_data.size)) + 7916) + 217] = 196
        mem[floor32((2 * ceil32(return_data.size)) + 7916) + 249 len 224] = 2179795234, Mask(224, 0, stor51), uint32(stor51), stor102, address(arg1), address(arg2), ext_call.return_data[0] << 248, uint8(ext_call.return_data[0]), 0
        mem[floor32((2 * ceil32(return_data.size)) + 7916) + 445] = 0
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
             gas gas_remaining wei
            args address(sha3(0, this.address, 0x5072696365466565640000000000000000000000000000000000000000000000, sha3(code.data[3376 len 7457]))), address(this.address), 96, 196, 2179795234, Mask(224, 0, stor51), uint32(stor51), stor102, address(arg1), address(arg2), ext_call.return_data[0] << 248, uint8(ext_call.return_data[0]), 0 >> 1312, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0] = address(arg2)
        mem[32] = sha3(address(arg1), 101)
        sub_9f0514ad[address(arg1)][address(arg2)] = address(create2.new_address)
        require ext_code.size(address(create2.new_address))
        staticcall address(create2.new_address).0xdde43cba with:
                gas gas_remaining wei
        mem[floor32((2 * ceil32(return_data.size)) + 7916) + 117] = ext_call.return_data[0]
        if not ext_call.success:
            mem[floor32((2 * ceil32(return_data.size)) + 7916) + 149 len 7457] = code.data[3376 len 7457]
            mem[floor32((2 * ceil32(return_data.size)) + 7916) + 117] = 7457
            mem[floor32(floor32((2 * ceil32(return_data.size)) + 7916) + 7637) + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
            mem[floor32(floor32((2 * ceil32(return_data.size)) + 7916) + 7637) + 33] = address(this.address)
            mem[floor32(floor32((2 * ceil32(return_data.size)) + 7916) + 7637) + 53] = 0x5072696365466565640000000000000000000000000000000000000000000000
            mem[floor32(floor32((2 * ceil32(return_data.size)) + 7916) + 7637) + 85] = sha3(code.data[3376 len 7457])
            mem[floor32(floor32((2 * ceil32(return_data.size)) + 7916) + 7637)] = 85
            if uint32(ext_code.size(sha3(0, this.address, 0x5072696365466565640000000000000000000000000000000000000000000000, sha3(code.data[3376 len 7457])))):
                require ext_code.size(address(create2.new_address))
                call address(create2.new_address).upgradeTo(address rg1) with:
                     gas gas_remaining wei
                    args address(sha3(0, this.address, 0x5072696365466565640000000000000000000000000000000000000000000000, sha3(code.data[3376 len 7457])))
            else:
                mem[floor32(floor32((2 * ceil32(return_data.size)) + 7916) + 7637) + 149 len 7457] = code.data[3376 len 7457]
                mem[floor32(floor32((2 * ceil32(return_data.size)) + 7916) + 7637) + 117] = 7457
                mem[64] = floor32(floor32(floor32((2 * ceil32(return_data.size)) + 7916) + 7637) + 7637)
                create2 contract with 0 wei
                                salt: 0x5072696365466565640000000000000000000000000000000000000000000000
                                code: code.data[3376 len 7457]
                if not ext_code.size(create2.new_address):
                    revert with memory
                      from 0
                       len 'Problem deploying contract'
                require ext_code.size(address(create2.new_address))
                call address(create2.new_address).upgradeTo(address rg1) with:
                     gas gas_remaining wei
                    args address(create2.new_address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            if ext_call.return_data[0] < 27:
                mem[floor32((2 * ceil32(return_data.size)) + 7916) + ceil32(return_data.size) + 149 len 7457] = code.data[3376 len 7457]
                mem[floor32((2 * ceil32(return_data.size)) + 7916) + ceil32(return_data.size) + 117] = 7457
                mem[floor32(floor32((2 * ceil32(return_data.size)) + 7916) + ceil32(return_data.size) + 7637) + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[floor32(floor32((2 * ceil32(return_data.size)) + 7916) + ceil32(return_data.size) + 7637) + 33] = address(this.address)
                mem[floor32(floor32((2 * ceil32(return_data.size)) + 7916) + ceil32(return_data.size) + 7637) + 53] = 0x5072696365466565640000000000000000000000000000000000000000000000
                mem[floor32(floor32((2 * ceil32(return_data.size)) + 7916) + ceil32(return_data.size) + 7637) + 85] = sha3(code.data[3376 len 7457])
                mem[floor32(floor32((2 * ceil32(return_data.size)) + 7916) + ceil32(return_data.size) + 7637)] = 85
                if uint32(ext_code.size(sha3(0, this.address, 0x5072696365466565640000000000000000000000000000000000000000000000, sha3(code.data[3376 len 7457])))):
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).upgradeTo(address rg1) with:
                         gas gas_remaining wei
                        args address(sha3(0, this.address, 0x5072696365466565640000000000000000000000000000000000000000000000, sha3(code.data[3376 len 7457])))
                else:
                    mem[floor32(floor32((2 * ceil32(return_data.size)) + 7916) + ceil32(return_data.size) + 7637) + 149 len 7457] = code.data[3376 len 7457]
                    mem[floor32(floor32((2 * ceil32(return_data.size)) + 7916) + ceil32(return_data.size) + 7637) + 117] = 7457
                    mem[64] = floor32(floor32(floor32((2 * ceil32(return_data.size)) + 7916) + ceil32(return_data.size) + 7637) + 7637)
                    create2 contract with 0 wei
                                    salt: 0x5072696365466565640000000000000000000000000000000000000000000000
                                    code: code.data[3376 len 7457]
                    if not ext_code.size(create2.new_address):
                        revert with memory
                          from 0
                           len 'Problem deploying contract'
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).upgradeTo(address rg1) with:
                         gas gas_remaining wei
                        args address(create2.new_address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[floor32((2 * ceil32(return_data.size)) + 7916) + 149 len 7457] = code.data[3376 len 7457]
        mem[floor32((2 * ceil32(return_data.size)) + 7916) + 117] = 7457
        mem[64] = floor32(floor32((2 * ceil32(return_data.size)) + 7916) + 7637)
        create2 contract with 0 wei
                        salt: 0x5072696365466565640000000000000000000000000000000000000000000000
                        code: code.data[3376 len 7457]
        if not ext_code.size(create2.new_address):
            revert with memory
              from 0
               len 'Problem deploying contract'
        mem[floor32(floor32((2 * ceil32(return_data.size)) + 7916) + 7637) + 4] = address(create2.new_address)
        mem[floor32(floor32((2 * ceil32(return_data.size)) + 7916) + 7637) + 36] = this.address
        mem[floor32(floor32((2 * ceil32(return_data.size)) + 7916) + 7637) + 68] = 96
        mem[floor32(floor32((2 * ceil32(return_data.size)) + 7916) + 7637) + 100] = 196
        mem[floor32(floor32((2 * ceil32(return_data.size)) + 7916) + 7637) + 132 len 224] = 2179795234, Mask(224, 0, stor51), uint32(stor51), stor102, address(arg1), address(arg2), ext_call.return_data[0] << 248, uint8(ext_call.return_data[0]), 0
        mem[floor32(floor32((2 * ceil32(return_data.size)) + 7916) + 7637) + 328] = 0
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
             gas gas_remaining wei
            args address(create2.new_address), address(this.address), 96, 196, 2179795234, Mask(224, 0, stor51), uint32(stor51), stor102, address(arg1), address(arg2), ext_call.return_data[0] << 248, uint8(ext_call.return_data[0]), 0 >> 1312, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0] = address(arg2)
        mem[32] = sha3(address(arg1), 101)
        sub_9f0514ad[address(arg1)][address(arg2)] = address(create2.new_address)
        require ext_code.size(address(create2.new_address))
        staticcall address(create2.new_address).0xdde43cba with:
                gas gas_remaining wei
        mem[floor32(floor32((2 * ceil32(return_data.size)) + 7916) + 7637)] = ext_call.return_data[0]
        if not ext_call.success:
            mem[floor32(floor32((2 * ceil32(return_data.size)) + 7916) + 7637) + 32 len 7457] = code.data[3376 len 7457]
            mem[floor32(floor32((2 * ceil32(return_data.size)) + 7916) + 7637)] = 7457
            mem[floor32(floor32(floor32((2 * ceil32(return_data.size)) + 7916) + 7637) + 7520) + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
            mem[floor32(floor32(floor32((2 * ceil32(return_data.size)) + 7916) + 7637) + 7520) + 33] = address(this.address)
            mem[floor32(floor32(floor32((2 * ceil32(return_data.size)) + 7916) + 7637) + 7520) + 53] = 0x5072696365466565640000000000000000000000000000000000000000000000
            mem[floor32(floor32(floor32((2 * ceil32(return_data.size)) + 7916) + 7637) + 7520) + 85] = sha3(code.data[3376 len 7457])
            mem[floor32(floor32(floor32((2 * ceil32(return_data.size)) + 7916) + 7637) + 7520)] = 85
            if uint32(ext_code.size(sha3(0, this.address, 0x5072696365466565640000000000000000000000000000000000000000000000, sha3(code.data[3376 len 7457])))):
                require ext_code.size(address(create2.new_address))
                call address(create2.new_address).upgradeTo(address rg1) with:
                     gas gas_remaining wei
                    args address(sha3(0, this.address, 0x5072696365466565640000000000000000000000000000000000000000000000, sha3(code.data[3376 len 7457])))
            else:
                mem[floor32(floor32(floor32((2 * ceil32(return_data.size)) + 7916) + 7637) + 7520) + 149 len 7457] = code.data[3376 len 7457]
                mem[floor32(floor32(floor32((2 * ceil32(return_data.size)) + 7916) + 7637) + 7520) + 117] = 7457
                mem[64] = floor32(floor32(floor32(floor32((2 * ceil32(return_data.size)) + 7916) + 7637) + 7520) + 7637)
                create2 contract with 0 wei
                                salt: 0x5072696365466565640000000000000000000000000000000000000000000000
                                code: code.data[3376 len 7457]
                if not ext_code.size(create2.new_address):
                    revert with memory
                      from 0
                       len 'Problem deploying contract'
                require ext_code.size(address(create2.new_address))
                call address(create2.new_address).upgradeTo(address rg1) with:
                     gas gas_remaining wei
                    args address(create2.new_address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            if ext_call.return_data[0] < 27:
                mem[floor32(floor32((2 * ceil32(return_data.size)) + 7916) + 7637) + ceil32(return_data.size) + 32 len 7457] = code.data[3376 len 7457]
                mem[floor32(floor32((2 * ceil32(return_data.size)) + 7916) + 7637) + ceil32(return_data.size)] = 7457
                mem[floor32(floor32(floor32((2 * ceil32(return_data.size)) + 7916) + 7637) + ceil32(return_data.size) + 7520) + 32] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[floor32(floor32(floor32((2 * ceil32(return_data.size)) + 7916) + 7637) + ceil32(return_data.size) + 7520) + 33] = address(this.address)
                mem[floor32(floor32(floor32((2 * ceil32(return_data.size)) + 7916) + 7637) + ceil32(return_data.size) + 7520) + 53] = 0x5072696365466565640000000000000000000000000000000000000000000000
                mem[floor32(floor32(floor32((2 * ceil32(return_data.size)) + 7916) + 7637) + ceil32(return_data.size) + 7520) + 85] = sha3(code.data[3376 len 7457])
                mem[floor32(floor32(floor32((2 * ceil32(return_data.size)) + 7916) + 7637) + ceil32(return_data.size) + 7520)] = 85
                if uint32(ext_code.size(sha3(0, this.address, 0x5072696365466565640000000000000000000000000000000000000000000000, sha3(code.data[3376 len 7457])))):
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).upgradeTo(address rg1) with:
                         gas gas_remaining wei
                        args address(sha3(0, this.address, 0x5072696365466565640000000000000000000000000000000000000000000000, sha3(code.data[3376 len 7457])))
                else:
                    mem[floor32(floor32(floor32((2 * ceil32(return_data.size)) + 7916) + 7637) + ceil32(return_data.size) + 7520) + 149 len 7457] = code.data[3376 len 7457]
                    mem[floor32(floor32(floor32((2 * ceil32(return_data.size)) + 7916) + 7637) + ceil32(return_data.size) + 7520) + 117] = 7457
                    mem[64] = floor32(floor32(floor32(floor32((2 * ceil32(return_data.size)) + 7916) + 7637) + ceil32(return_data.size) + 7520) + 7637)
                    create2 contract with 0 wei
                                    salt: 0x5072696365466565640000000000000000000000000000000000000000000000
                                    code: code.data[3376 len 7457]
                    if not ext_code.size(create2.new_address):
                        revert with memory
                          from 0
                           len 'Problem deploying contract'
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).upgradeTo(address rg1) with:
                         gas gas_remaining wei
                        args address(create2.new_address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    return address(create2.new_address)
}



}
